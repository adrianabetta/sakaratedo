﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExcepcionesSKD;
using System.Data.SqlClient;
using System.Data;


namespace DatosSKD.Modulo16
{
    /// <summary>
    /// Clase que gestiona todo el proceso del carrito del usuario contra la Base de Datos
    /// </summary>
    public class BDCarrito
    {
        #region Constructores
        /// <summary>
        /// Constructor vacio de la clase BDCarrito
        /// </summary>
        public BDCarrito()
        {
           
        }
        #endregion

        #region Metodos
        /// <summary>
        /// Metodo que obtiene todos los items del inventario en el carrito del usuario de la Base de Datos
        /// </summary>
        /// <param name="idUsuario">Usuario del que se desea ver los items del iventario agregados en carrito</param>
        /// <returns>Lista con todos los items del inventario que se encuentran en el carrito</returns>
        /*
        public List<Inventario> getIventario(int idUsuario)
        {

        }*/

        /// <summary>
        /// Metodo que obtiene todas las matriculas en el carrito del usuario en la Base de Datos
        /// </summary>
        /// <param name="idUsuario">Usuario del que se desea ver las matriculas agregadas en carrito</param>
        /// <returns>Lista con todas las matriculas que se encuentra en el carrito</returns>
        /*
        public List<Matricula> getMatricula(int idUsuario)
        {

        }*/

        /// <summary>
        /// Metodo que obtiene tos los eventos en el carrito el usuario en la Base de Datos
        /// </summary>
        /// <param name="idUsuario">Usuario del que se desea ver los eventos agregados en carrito</param>
        /// <returns>Lista con todos los eventos que se encuentran en el carrito</returns>
        /*
        public List<Evento> getEvento(int idUsuario)
        {

        }*/

        /// <summary>
        /// Metodo que obtiene todas las matriculas en el carrito del usuario de la Base de Datos
        /// </summary>
        /// <param name="idUsuario">Usuario del que se desea ver las matriculas agregadas en el carrito</param>
        /// <returns>Lista con todas las matriculas que se encuentran en el carrito</returns>
        /*
        public List<Matricula> getMatricula(int idUsuario)
        {

        }*/

        /// <summary>
        /// Metodo que obtiene todos los eventos en el carrito del usuario de la Base de Datos
        /// </summary>
        /// <param name="idUsuario">Usuario del que se desea ver los eventos agregados en el carrito</param>
        /// <returns>Lista con todos los eventos que se encuentran en el carrito</returns>
        /*
        public List<Evento> getEvento(int idUsuario)
        {

        }*/

        /// <summary>
        /// Metodo que elimina un objeto que haya en el carrito del usuario en la Base de Datos
        /// </summary>
        /// <param name="tipoObjeto">Especifica si se borrara una matricula, un inventario o evento</param>
        /// <param name="objetoBorrar">El objeto en especifico a borrar</param>
        /// <param name="idUsuario">El usuario al que se alterara su carrito</param>
        /// <returns>Si la operacion fue exitosa o fallida</returns>
        public bool eliminarItem(int tipoObjeto, int objetoBorrar, int idUsuario)
        {
            //Procedo a intentar eliminar el Item en BD
            try
            {
                //Creo la lista de los parametros para el stored procedure y los anexo
                List<Parametro> parametros = new List<Parametro>();
                Parametro parametro = new Parametro(RecursosBDModulo16.PARAMETRO_USUARIO, SqlDbType.Int, 
                    idUsuario.ToString(), false);
                parametros.Add(parametro);
                parametro = new Parametro(RecursosBDModulo16.PARAMETRO_ITEM, SqlDbType.Int, 
                    objetoBorrar.ToString(), false);
                parametros.Add(parametro);
                parametro = new Parametro(RecursosBDModulo16.PARAMETRO_TIPO_ITEM, SqlDbType.Int, 
                    idUsuario.ToString(), false);
                parametros.Add(parametro);
                
                //Creo la conexion a Base de Datos y ejecuto el Stored Procedure
                BDConexion conexion = new BDConexion();
                conexion.EjecutarStoredProcedure(RecursosBDModulo16.PROCEDIMIENTO_ELIMINAR_ITEM,parametros);

                return true;
            }
            catch (SqlException e)
            {
                throw new ExceptionSKDConexionBD("","",e);
            }
            catch (ParametroInvalidoException e)
            {
                throw e;
            }
            catch (Exception e)
            {
                throw new ExceptionSKDConexionBD("blabla","blabla",e);
            }

        }

        /// <summary>
        /// Metodo que registra el pago de los productos existentes en el carrito de la base de datos
        /// La lista de datos actualmente no se usa, se deja asi para posibles futuros usos
        /// </summary>
        /// <param name="tipoPago">Indica cual de las formas se eligio para los pagos</param>
        /// <param name="datos">Todos los datos pertenecientes de ese tipo de pago</param>
        /// <param name="idUsuario">El usuario al que se alterara su carrito</param>
        /// <returns>Si la operacion fue exitosa o fallida</returns>
        public bool registrarPago(String tipoPago, List<int> datos, int idUsuario)
        {
            //Procedo a intentar registrar el pago en Base de Datos
            try
            {
                //Creo la lista de los parametros para el stored procedure y los anexo
                List<Parametro> parametros = new List<Parametro>();
                Parametro parametro = new Parametro(RecursosBDModulo16.PARAMETRO_USUARIO, 
                    SqlDbType.VarChar, tipoPago, false);
                parametros.Add(parametro);
                parametro = new Parametro(RecursosBDModulo16.PARAMETRO_TIPO_ITEM, 
                    SqlDbType.Int, idUsuario.ToString(), false);
                parametros.Add(parametro);

                //Creo la conexion a Base de Datos y ejecuto el Stored Procedure
                BDConexion conexion = new BDConexion();
                conexion.EjecutarStoredProcedure(RecursosBDModulo16.PROCEDIMIENTO_REGISTRAR_PAGO, parametros);

                return true;
            }
            catch (SqlException e)
            {
                throw new ExceptionSKDConexionBD("", "", e);
            }
            catch (ParametroInvalidoException e)
            {
                throw e;
            }
            catch (Exception e)
            {
                throw new ExceptionSKDConexionBD("blabla", "blabla", e);
            }
        }














        /// <summary>
        /// Metodo que agrega los eventos al carrito, en el ambiente de base de datos
        /// </summary>
        /// <param name="idUsuario">Indica el Indentificador del usuario que esta asociado al evento</param>
        /// <param name="idEvento">Indica el Identificador del Evento</param>
        /// <returns> True o False si la operacion fue exitosa o fallida</returns>
        public bool agregarEventoaCarrito(int idUsuario, int idEvento)
        {
            return true;
        }

        /// <summary>
        /// Metodo que agrega los matriculas al carrito, en el ambiente de base de datos
        /// </summary>
        /// <param name="idUsuario">Indica el identificador del Usuario</param>
        /// <param name="idMatricula">Indica el Identificador de la Matricula</param>
        /// <returns>True o False si la operacion fue exitosa o fallida</returns>
        public bool agregarMatriculaaCarrito(int idUsuario, int idMatricula)
        {
            return true;
        }

        /// <summary>
        /// Metodo que agrega los inventarios al carrito, en el ambiente de base de datos
        /// </summary>
        /// <param name="idUsuario">Indica cual de las formas se eligio para pagar</param>
        /// <param name="idInventario">Todos los datos pertinentes de ese tipo de pago</param>
        /// <returns>True o False si la operacion fue exitosa o fallida</returns>
        public bool agregarInventarioaCarrito(int idUsuario, int idInventario)
        {
            return true;
        }


        


        #endregion
    }
}