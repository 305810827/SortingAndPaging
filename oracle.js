var oracledb = require('oracledb');
var query = function(sql,callback){
    oracledb.getConnection(
        {
            user: 'stu_user', //用户
            password: 'orcl',//密码
            connectString: 'localhost/ORCL' //连接地址
        },
        function (err, connection)
        {
            if (err)
            {
                console.error(err.message);
                return;
            }/*else{
                console.log("连接成功");
            }*/
            connection.execute(sql, [], function (err, result)
            {
                if (err)
                {
                    console.error(err.message);
                    doRelease(connection);
                    return;
                }
                console.log(result.rows);
                callback(result.rows.map((v)=>
                {
                    return result.metaData.reduce((p, key, i)=>
                    {
                        p[key.name] = v[i];
                        return p;
                    }, {})
                }));
                doRelease(connection);
            });
        }
    );
}
function doRelease(connection) {
    connection.close(
        function(err) {
            if (err)
                console.error(err.message);
        });
}
exports.query = query;
