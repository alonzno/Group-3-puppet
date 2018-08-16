const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const NodeCouchDb = require('node-couchdb');

const app = express();

// node-couchdb instance talking to external service
const couchExternal = new NodeCouchDb({
    host: 'ec2-50-112-227-228.us-west-2.compute.amazonaws.com',
    protocol: 'http',
    port: 5984
});

const dbName = 'recipes';
const viewUrl = '_design/all_recipes/_view/all';


/* couchExternal.listDatabases().then(function(dbs){
    console.log(dbs);
});
*/

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.use('/assets', express.static('assets'));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

app.get('/', function(req, res){
    couchExternal.get(dbName, viewUrl).then(
        function(data,headers,status){
            //console.log(data.data.rows);
            res.render('index',{
                recipes:data.data.rows
            });
        },
        function(err){
            res.send(err);
        });
});

app.listen(3000, function(){
    console.log('Server started on port 3000');
});
