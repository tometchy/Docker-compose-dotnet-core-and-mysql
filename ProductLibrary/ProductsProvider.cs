using System.Linq;
using Dapper;
using MySql.Data.MySqlClient;

namespace ProductLibrary
{
    public class ProductsProvider
    {
        private const string CONN_STRING = "Server=db;Port=3306;Database=product-db;Uid=root; Pwd=myPass;";
        private const string QUERY = "SELECT Id, Name, Description FROM product";
        
        public Product[] GetAll()
        {
            using (var connection = new MySqlConnection(CONN_STRING))
            {
                return connection.Query<Product>(QUERY).ToArray();
            }
        }
    }
}
