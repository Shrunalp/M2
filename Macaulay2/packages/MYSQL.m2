newPackage "MYSQL" -- the name of this package conflicts with the name of the type 
end

m = mysqlRealConnect ("localhost","dan","foobar","",0,"")
mysqlGetHostInfo m
d = mysqlListDbs(m,"")
mysqlFetchRow d
mysqlFetchRow d
mysqlFetchRow d
mysqlFetchRow d
mysqlFetchRows mysqlListDbs(m,"")
mysqlFetchRows mysqlListDbs(m,"f_")
mysqlFetchRows mysqlListDbs(m,"f__")
mysqlFetchRows mysqlListDbs(m,"f%")

n = new MysqlBuffer from m
n << "use foo" << submit
mysqlFetchRows mysqlListFields(m,"clients","")		    -- ???
mysqlFetchRows mysqlListFields(m,"clients","i%")	    -- ???

m << "show columns from clients"
mysqlFetchRows mysqlStoreResult m

n << "select * " << " from clients" << submit
r = mysqlStoreResult m
mysqlFetchFields r
mysqlFetchRows r

n << "select * from clients" << submit
mysqlFetchRows mysqlUseResult m
