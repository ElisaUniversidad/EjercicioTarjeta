using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejerciciotarjetaa
{
    public partial class controlTarjeta : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //1 - VERIFICANDO EL NÚMERO DE TARJETA:
            //Obteniendo la nueva cifra al identificar posiciones impares 
            string numtar = this.txtNumTar.Text;
            string final = "";

            double vartemporal = 0;
            for (int i = 0; i < numtar.Length; i++)
            {
                vartemporal = Convert.ToDouble(numtar.Substring(i, 1));
                if (i % 2 == 0)
                {
                    if (vartemporal * 2 < 9)
                    {
                        vartemporal *= 2;
                    }
                    else
                    {
                        vartemporal = (vartemporal * 2) - 9;
                    }
                }
                final += vartemporal.ToString();
            }
            //Se suman entre sí todas las cifras del resultado anterior
            char[] arraynumeros = final.ToString().ToCharArray();
            int resultado = 0;
            foreach (char numero in arraynumeros)
            {
                resultado += int.Parse(numero.ToString());
            }
            //Si el resultado es múltiplo de 10 y menor o igual a 150 es un número de tarjeta válido 
            if (resultado % 10 == 0 && resultado <= 150)
            {
                this.lblValido.Text = "<span style=  \"color: green\">" + "Número de tarjeta válido" + "</span><br>" ;
            }
            else
            {
                this.lblValido.Text = "<span style=  \"color: red\">" + "Número de tarjeta inválido" + "</span><br>"; ;
            }

            //FIN DE VERIFICACIÓN DE TARJETA.

            // 2 -IDENTIFICAR LA MARCA DE LA TARJETA:
            //Obteniendo el primer caracter del número de tarjeta
            int numinicial = Convert.ToInt32(numtar.Substring(0, 1));

            //Verificando si la tarjeta pertenece a una de las marcas
            if (numinicial == 3 || numinicial == 4 || numinicial == 5 || numinicial == 6)
            {
                switch (numinicial)
                {
                    case 3:
                        this.lblMarca.Text = "<span style=  \"color: green\">" + "La tarjeta es American Express" + "</span>";
                        break;
                    case 4:
                        this.lblMarca.Text = "<span style=  \"color: green\">" + "La tarjeta es Visa" + "</span>";
                        break;
                    case 5:
                        this.lblMarca.Text = "<span style=  \"color: green\">" + "La tarjeta es MasterCard" + "</span>";
                        break;
                    case 6:
                        this.lblMarca.Text = "<span style=  \"color: green\">" + "La tarjeta es Discover" + "</span>";
                        break;
                }
            }
            else
            {
                this.lblMarca.Text = "<span style=  \"color: red\">" + "Tarjeta inválida" + "</span><br>"; ;
            }
            // FIN DE IDENTIFICACIÓN DE LA MARCA

            // 3 - VALIDAR QUE NO ESTÉ VENCIDA

            int mes, anio;
            mes = Convert.ToInt32(this.txtmes.Text);
            anio = Convert.ToInt32(this.txtanio.Text);

            DateTime fechaActual = DateTime.Now;
            DateTime fechatarjeta = new DateTime(anio, mes, 1, 00, 00, 00);
            
            //Evaluará la fecha de vencimiento solo sí el número de tarjeta es válido

            if (this.lblValido.Text.Equals("<span style=  \"color: green\">" + "Número de tarjeta válido" + "</span><br>" ))
            {
                if (fechatarjeta.Month >= fechaActual.Month)
                {
                    this.lblVencida.Text = "<span style=  \"color: green\">" + "Tarjeta Vigente" + "</span><br>";
                }
                else
                {
                    this.lblVencida.Text = "<span style=  \"color: red\">" + "Tarjeta Vencida" + "</span><br>";
                }
            }
            else
            {
                this.lblVencida.Text = "";
            }
            //FIN DE VALIDACIÓN DE FECHA

        }
    }
}