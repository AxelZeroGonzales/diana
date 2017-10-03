Imports System.Data
Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page
    Private Cnx As New SqlConnection("Data Source=USUARIO\MSSQLSERVER1;Initial Catalog=dbferreteria1;Integrated Security=True")
    Private Dap As New SqlDataAdapter("usp_alumnos_Listar", Cnx)
    Private dst As New DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        mostrar()
    End Sub

    Protected Sub Txtcodigo_TextChanged(sender As Object, e As EventArgs) Handles Txtcodigo.TextChanged

    End Sub
    Private Sub limpiar()
        txtcodigo.Text = "" : txtapellido.Text = ""
        Txtnombre.Text = "" : Txtdistrito.Text = ""
        Txttelefono.Text = "" : Txtdireccion.Text = ""
    End Sub


    Private Sub mostrar()
        dst.Clear()
        Dap.Fill(dst, "Data Source=USUARIO\MSSQLSERVER1;Initial Catalog=dbferreteria1;Integrated Security=True")
        grdAlumno.DataSource = dst.Tables("alumnos")
        grdAlumno.DataBind()
    End Sub
    Protected Sub btnlimpiar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnlimpiar.Click
        limpiar()
    End Sub
    Protected Sub btnAgregar_Click(sender As Object, e As EventArgs) Handles Btnagregar.Click
        Dim cmd As New SqlCommand("usp_alumnos_Adicionar", Cnx)
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.Add("nombre", Txtnombre.Text)
            .Parameters.Add("apellido", Txtapellido.Text)
            .Parameters.Add("distrito", Txtdistrito.Text)
            .Parameters.Add("direccion", Txttelefono.Text)
            .Parameters.Add("telefono", Txttelefono.Text)
        End With
        Try
            Cnx.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            lblerror.Text = "Error" & ex.Message
        Finally
            Cnx.Close()
            limpiar() : mostrar()
        End Try

    End Sub

    Protected Sub grdAlumno_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grdAlumno.SelectedIndexChanged
        llenardesdedrid()
    End Sub

    Private Sub llenardesdedrid()
        With dst.Tables("Data Source=USUARIO\MSSQLSERVER1;Initial Catalog=dbferreteria1;Integrated Security=True").Rows(grdAlumno.SelectedIndex.ToString)
            Txtcodigo.Text = .ItemArray(0)
            Txtnombre.Text = .ItemArray(1)
            Txtapellido.Text = .ItemArray(2)
            Txtdistrito.Text = .ItemArray(3)
            Txtdireccion.Text = .ItemArray(4)
            Txttelefono.Text = .ItemArray(5)
        End With
    End Sub




    Protected Sub btneliminar_Click(sender As Object, e As EventArgs) Handles Btneliminar.Click
        Dim cmd As New SqlCommand("usp_cliente_eliminar", Cnx)
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.Add("codigo", Txtcodigo.Text)
        End With
        Try
            Cnx.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            lblerror.Text = "Error" & ex.Message
        Finally
            Cnx.Close()
            limpiar() : mostrar()
        End Try
    End Sub



    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles Btnmodificar.Click
        Dim cmd As New SqlCommand("usp_alumnos_actualizar", Cnx)
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.Add("codigo", Txtcodigo.Text)
            .Parameters.Add("nombre", Txtnombre.Text)
            .Parameters.Add("apellido", Txtapellido.Text)
            .Parameters.Add("distrito", Txtdistrito.Text)
            .Parameters.Add("direccion", Txtdireccion.Text)
            .Parameters.Add("telefono", Txttelefono.Text)
        End With
        Try
            Cnx.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            lblerror.Text = "Error" & ex.Message
        Finally
            Cnx.Close()
            limpiar() : mostrar()
        End Try
    End Sub



    Protected Sub Txtfecha_TextChanged(sender As Object, e As EventArgs) Handles Txtdireccion.TextChanged

    End Sub
End Class
