using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoData;
using System.Data.Linq;

namespace LogicaNegocios
{
    public class Llogin
    {
        static HotelesBDDDataContext dc = new HotelesBDDDataContext();

        public static bool Autentificar(string pusuario, string pass)
        {
            bool respuesta = false;

            try
            {

                respuesta = dc.tbl_usuarios.Any(lg => lg.nick_usuario.Equals(pusuario) & lg.clave_usuario.Equals(pass));


            }
            catch (Exception ex)
            {

                throw new ApplicationException("Error al Autentificar", ex);

            }
            return respuesta;
        }

        public static tbl_persona ObtenerUsuario(string pusuario, string pass)
        {
            tbl_usuario result = new tbl_usuario();
            tbl_persona UserResult = new tbl_persona();
            try
            {
                result = dc.tbl_usuarios.FirstOrDefault(lg => lg.nick_usuario.Equals(pusuario) & lg.clave_usuario.Equals(pass));

                if (result != null)
                {
                    UserResult = dc.tbl_personas.First(u => u.id_persona.Equals(result.id_persona));
                }
            }
            catch (Exception ex)
            {

                throw new ApplicationException("Error al Consultar Usuario", ex);
            }
            return UserResult;
        }

        public static tbl_usuario ObtenerNick(string pusuario, string pass)
        {
            tbl_usuario result = new tbl_usuario();
            tbl_persona UserResult = new tbl_persona();
            try
            {
                result = dc.tbl_usuarios.FirstOrDefault(lg => lg.nick_usuario.Equals(pusuario) & lg.clave_usuario.Equals(pass));

                if (result != null)
                {
                    result = dc.tbl_usuarios.First(l => l.id_usuario.Equals(result.id_usuario));
                }
            }
            catch (Exception ex)
            {

                throw new ApplicationException("Error al Consultar Usuario", ex);
            }
            return result;
        }
    }
}
