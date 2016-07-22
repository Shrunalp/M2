compute#Polyhedron#computedVertices = method()
compute#Polyhedron#computedVertices Polyhedron := P -> (
   C := getProperty(P, underlyingCone);
   n := ambDim P;
   homogVert := rays C;
   r := ring homogVert;
   vList := {};
   rList := {};
   latticeTest := true;
   for i from 0 to numColumns homogVert - 1 do (
      current := homogVert_i;
      if current_0 > 0 then (
         if current_0 != 1 then (
            latticeTest = false;
            current = (1/(current_0)) * vectorToQQ(current);
         );
         vList = append(vList, slice(current, 1..n));
      ) else if current_0 == 0 then (
         rList = append(rList, slice(current, 1..n));
      ) else (
         error("Something went wrong, vertex with negative height.");
      );
   );
   setProperty(P, lattice, latticeTest);
   vMat := matrixFromVectorList(vList, n, r);
   rMat := matrixFromVectorList(rList, n, r);
   setProperty(P, computedRays, rMat);
   setProperty(P, empty, numColumns vMat == 0);
   return vMat
)

vectorToQQ = method()
vectorToQQ Vector := v -> (
   r := ring v;
   if r === QQ then return v
   else (
      newEntries := apply(entries v, e -> promote(e, QQ));
      return vector newEntries
   )
)


compute#Polyhedron#empty = method()
compute#Polyhedron#empty Polyhedron := P -> (
   if hasProperty(P, points) then (numColumns getProperty(P, points)) == 0
   else (numColumns vertices P) == 0
)


compute#Polyhedron#computedRays = method()
compute#Polyhedron#computedRays Polyhedron := P -> (
   vertices P;
   getProperty(P, computedRays)
)


compute#Polyhedron#computedDimension = method()
compute#Polyhedron#computedDimension Polyhedron := P -> (
   C := getProperty(P, underlyingCone);
   dim C - 1
)


compute#Polyhedron#computedLinealityBasis = method()
compute#Polyhedron#computedLinealityBasis Polyhedron := P -> (
   C := getProperty(P, underlyingCone);
   result := linealitySpace C;
   test := all(0..(numColumns result - 1), i-> result_i_0 == 0);
   if not test then error("Something went wrong while computing linealitySpace.");
   submatrix(result, 1..(numRows result -1), 0..(numColumns result - 1))
)


compute#Polyhedron#underlyingCone = method()
compute#Polyhedron#underlyingCone Polyhedron := P -> (
   result := new Cone from {cache => new CacheTable};
   local r;
   local pMat;
   local rMat;
   local ezero;
   local L;
   -- Copy every information the polyhedron provides to the
   -- underlyingCone.
   if hasProperties(P, {points, inputRays}) then (
      pMat = prependOnes getProperty(P, points);
      rMat = prependZeros getProperty(P, inputRays);
      setProperty(result, inputRays, pMat | rMat);
   );
   if hasProperties(P, {computedVertices, computedRays}) then (
      pMat = prependOnes getProperty(P, computedVertices);
      rMat = prependZeros getProperty(P, computedRays);
      setProperty(result, computedRays, pMat | rMat);
   );
   if hasProperty(P, inputLinealityGenerators) then (
      pMat = prependZeros getProperty(P, inputLinealityGenerators);
      setProperty(result, inputLinealityGenerators, pMat);
   );
   if hasProperty(P, computedLinealityBasis) then (
      pMat = prependZeros getProperty(P, computedLinealityBasis);
      setProperty(result, computedLinealityBasis, pMat);
   );
   if hasProperty(P, computedFacets) then (
      L = getProperty(P, computedFacets);
      pMat = -L#1 | L#0;
      ezero = matrix {flatten {1 , toList ((numgens source L#0):0)}};
      setProperty(result, inequalities, ezero || (-pMat));
   );
   if hasProperty(P, inequalities) then (
      L = getProperty(P, inequalities);
      pMat = -L#1 | L#0;
      ezero = matrix {flatten {1 , toList ((numgens source L#0):0)}};
      -- At this point we do not know whether the height inequality
      -- is implied.
      setProperty(result, inequalities, ezero || (-pMat));
   );
   if hasProperty(P, computedHyperplanes) then (
      L = getProperty(P, computedHyperplanes);
      pMat = (-L#1) | L#0;
      setProperty(result, computedHyperplanes, pMat);
   );
   if hasProperty(P, equations) then (
      L = getProperty(P, equations);
      pMat = (-L#1) | L#0;
      setProperty(result, equations, pMat);
   );
   return result
)


compute#Polyhedron#computedFacets = method()
compute#Polyhedron#computedFacets Polyhedron := P -> (
   C := getProperty(P, underlyingCone);
   result := facets C;
   -- Elimination of the trivial half-space
   ezero := matrix {flatten {1 , toList (((numgens source result)-1):0)}};
   trivialIndex := positions(0..(numRows result)-1, i -> (ezero === result^{i} ));
   if #trivialIndex > 0 then (
      trivialIndex = trivialIndex#0;
   ) else (
      trivialIndex = -1;
   );
   result = result^(toList select(0..(numRows result)-1, i -> i != trivialIndex));
   (- submatrix(result, 0..(numRows result - 1), 1..(numColumns result -1)), result_{0})
)


compute#Polyhedron#computedHyperplanes = method()
compute#Polyhedron#computedHyperplanes Polyhedron := P -> (
   C := getProperty(P, underlyingCone);
   result := hyperplanes C;
   (submatrix(result, 0..(numRows result - 1), 1..(numColumns result -1)), -result_{0})
)


compute#Polyhedron#verticesThroughFacets = method()
compute#Polyhedron#verticesThroughFacets Polyhedron := P -> (
   facetsP := facets P;
   C := getProperty(P, underlyingCone);
   facetVectors := facetsP#0;
   facetValues := facets;
   verticesP := vertices P;
   L := for i from 0 to (numColumns verticesP -1) list (
      vertex := verticesP_i;
      select(0..(numRows facetsP - 1), 
         j-> (
            facet := facetsP^{j};
         )
      )
   );
)


compute#Polyhedron#facetToFacetMap = method()
compute#Polyhedron#facetToFacetMap Polyhedron := P -> (
   facetsP := facets P;
   facetsP = (-facetsP#1) | facetsP#0;
   C := getProperty(P, underlyingCone);
   facetsC := facets C;
   rayCorrespondenceMap( - transpose facetsC, transpose facetsP)
)


compute#Polyhedron#computedNormalFan = method()
compute#Polyhedron#computedNormalFan Polyhedron := P -> (
   C := getProperty(P, underlyingCone);
   raysC := rays C;
   raysNF := - transpose (facets P)#0;
   facetMap := getProperty(P, facetToFacetMap);
   maximalConesNF := getProperty(C, computedRaysThroughFacets);
   goodConeIndices := select(numColumns raysC, i -> (raysC_i)_0 > 0);
   maximalConesNF = maximalConesNF_goodConeIndices;
   maximalConesNF = apply(maximalConesNF,
      mc -> (
         apply(mc, i -> facetMap#i)
      )
   );
   linealitySpaceNF := transpose((hyperplanes P)#0);
   result := fan(raysNF, linealitySpaceNF, maximalConesNF);
   setProperty(result, computedPolytope, P);
   result
)


compute#Polyhedron#ambientDimension = method()
compute#Polyhedron#ambientDimension Polyhedron := P -> (
   C := getProperty(P, underlyingCone);
   ambDim C - 1
)


compute#Polyhedron#computedLatticePoints = method()
compute#Polyhedron#computedLatticePoints Polyhedron := P -> (
   if isEmpty P then error("Polyhedron is empty!");
   C := getProperty(P, underlyingCone);
   H := hilbertBasis C;
   result := select(H, h -> h_(0,0) == 1);
   result = apply(result, r -> submatrix(r, 1..(numRows r -1) ,(1:0)));
   apply(result, r -> lift(r, ZZ))
)

compute#Polyhedron#computedFacesThroughRays = method()
compute#Polyhedron#computedFacesThroughRays Polyhedron := P -> (
   C := getProperty(P, underlyingCone);
   vertP := vertices P;
   raysP := rays P;
   raysC := rays C;
   vertPCMap := rayCorrespondenceMap(raysC, prependOnes vertP);
   raysPCMap := rayCorrespondenceMap(raysC, prependZeros raysP);
   -- << "VP: " << vertP << endl;
   -- << "RP: " << raysP << endl;
   -- << "RC: " << raysC << endl;
   -- << vertPCMap << endl;
   -- << raysPCMap << endl;
   facesC := faces C;
   result := for codim in keys facesC list (
      facesPcodim := apply(facesC#codim,
         face -> (
            vertFace := apply(face, v -> vertPCMap#v);
            vertFace = select(vertFace, v -> v != -1);
            raysFace := apply(face, v -> raysPCMap#v);
            raysFace = select(raysFace, v -> v != -1);
            (vertFace, raysFace)
         )
      );
      -- << facesPcodim << endl;
      facesPcodim = select(facesPcodim, face -> #(face#0) > 0);
      codim  => facesPcodim
   );
   new MutableHashTable from result
)


compute#Polyhedron#computedFVector = method()
compute#Polyhedron#computedFVector Polyhedron := P -> (
   apply(dim P + 1, d -> #faces(dim P - d,P))
)

compute#Polyhedron#computedPolar = method()
compute#Polyhedron#computedPolar Polyhedron := P -> (
   C := getProperty(P, underlyingCone);
   CD := dualCone C;
   result := new HashTable from {
      underlyingCone => CD
   };
   polyhedron result
)

compute#Polyhedron#computedCompact = method()
compute#Polyhedron#computedCompact Polyhedron := P -> (
   linealitySpace(P) == 0 and rays(P) == 0
)

compute#Polyhedron#computedNormal = method()
compute#Polyhedron#computedNormal Polyhedron := P -> (
   if not isCompact P then error ("The polyhedron must be compact");
     -- Computing the Hilbert basis of the cone over 'P' on height 1
   C := getProperty(P, underlyingCone);
   L := hilbertBasis C;
   n := ambDim P;
   -- Do all lattice points lie in height one?
   all(L,v -> v_(n,0) == 1)
)

