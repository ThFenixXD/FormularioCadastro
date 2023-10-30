using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FormularioCadastro4._0.Útil;

namespace FormularioCadastro4._0
{
    public partial class FormularioCadastro : System.Web.UI.Page
    {
        #region Métodos
        protected void AtualizaGrid(string Query)
        {
            GridCadastro.DataSource = Framework.GetDataTable(Query);
            GridCadastro.DataBind();
        }

        protected void LimpaCampos()
        {
            txtCPF.Text =
            txtEmail.Text =
            txtSenha.Text =
            txtNome.Text =
            txtSobrenome.Text =
            txtNascimento.Text =
            txtRG.Text =
            txtCEP.Text =
            txtEndereco.Text =
            txtNumero.Text =
            txtComplemento.Text =
            txtBairro.Text =
            txtCidade.Text =
            txtTelefone.Text =
            txtCelular.Text =
            string.Empty;
        }

        protected void EscondePaineis()
        {
            pnlCadastro.Visible = false;
            pnlGridCadastro.Visible = false;
        }

        protected void PopulaCampos(int _cdTabId)
        {
            using (FormularioEntities ctx = new FormularioEntities())
            {
                int cdTabID = _cdTabId;
                hdfFormID.Value = _cdTabId.ToString();

                tb_formulario Pessoa = new tb_formulario();

                var Query = (from objPessoa
                             in ctx.tb_formulario
                             where Pessoa.ID == cdTabID
                             select Pessoa).FirstOrDefault();

                txtNome.Text = Query.Nome;
                txtSobrenome.Text = Query.Sobrenome;
                txtNascimento.Text = Query.DataNascimento;
                txtRG.Text = Query.RG;
                ddlSex.Text = Query.Sexo;
                txtCEP.Text = Query.Sexo;
                txtEndereco.Text = Query.Endereço;
                txtNumero.Text = Query.Numero;
                txtComplemento.Text = Query.Complemento;
                txtBairro.Text = Query.Bairro;
                txtCidade.Text = Query.Cidade;
                ddlEstados.Text = Query.Estado;
                txtTelefone.Text = Query.Telefone;
                txtCelular.Text = Query.Celular;

            }
        }

        protected bool ValidacaoIgualdade(string _Valor1, string _Valor2)
        {
            return _Valor1 == _Valor2;
        }

        #endregion

        #region Click

        protected void btCadastrar_Click(object sender, EventArgs e)
        {
            using (FormularioEntities ctx = new FormularioEntities())
            {
                tb_formulario tb = new tb_formulario();
                try
                {
                    if (!string.IsNullOrEmpty(hdfFormID.Value))
                    {
                        int _id = Convert.ToInt32(hdfFormID.Value);

                        var Query = (from objFormulario
                                     in ctx.tb_formulario
                                     where objFormulario.ID == _id
                                     select objFormulario);

                        tb = Query.FirstOrDefault();
                    }
                    if (txtEmail.Text == txtConfirmaEmail.Text && txtSenha.Text == txtConfirmarSenha.Text)
                    {
                        tb.CPF = txtCPF.Text;
                        tb.Email = txtEmail.Text;
                        tb.Senha = txtSenha.Text;
                        tb.Nome = txtNome.Text;
                        tb.Sobrenome = txtSobrenome.Text;
                        tb.DataNascimento = txtNascimento.Text;
                        tb.RG = txtRG.Text;
                        tb.Sexo = ddlSex.Text;
                        tb.CEP = txtCEP.Text;
                        tb.Endereço = txtEndereco.Text;
                        tb.Numero = txtNumero.Text;
                        tb.Complemento = txtComplemento.Text;
                        tb.Bairro = txtBairro.Text;
                        tb.Cidade = txtCidade.Text;
                        tb.Estado = ddlEstados.Text;
                        tb.Telefone = txtTelefone.Text;
                        tb.Celular = txtCelular.Text;
                        tb.Deleted = 0;

                        if (string.IsNullOrEmpty(hdfFormID.Value))
                        {
                            ctx.tb_formulario.Add(tb);
                        }

                        ctx.SaveChanges();
                        EscondePaineis();
                        pnlGridCadastro.Visible = true;

                        AtualizaGrid("SELECT ID, Nome, Sobrenome, DataNascimento, RG, Sexo, CEP, Endereço, Numero, Complemento, Bairro, Cidade, Estado, Telefone, Celular " +
                                     "FROM tb_formulario " +
                                     "WHERE Deleted = 0");
                    }
                    else
                    {
                        Response.Write("Erro, Email ou senha estão divergentes");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Erro " + ex.Message);
                }
            }
        }

        protected void btNovoCadastro_Click(object sender, EventArgs e)
        {
            EscondePaineis();
            LimpaCampos();
            pnlCadastro.Visible = true;
        }

        #endregion

        #region ItemCommand

        protected void GridCadastro_ItemCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {
            try
            {

                int cdID = Convert.ToInt32(e.Item.OwnerTableView.DataKeyValues[e.Item.ItemIndex]["ID"]);

                switch (e.CommandName)
                {
                    case "opEditar":
                        EscondePaineis();
                        pnlCadastro.Visible = true;
                        PopulaCampos(cdID);
                        break;

                    case "opExcluir":
                        using (FormularioEntities ctx = new FormularioEntities())
                        {
                            tb_formulario Pessoa = new tb_formulario();
                            int _id = cdID;

                            var Query = (from objPessoa
                                        in ctx.tb_formulario
                                         where objPessoa.ID == _id
                                         select objPessoa).FirstOrDefault();

                            Query.Deleted = 1;
                            ctx.SaveChanges();
                        }
                        AtualizaGrid("SELECT ID, Nome, Sobrenome, DataNascimento, RG, Sexo, CEP, Endereço, Numero, Complemento, Bairro, Cidade, Estado, Telefone, Celular " +
                                     "FROM tb_formulario " +
                                     "WHERE Deleted = 0");
                        break;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        #endregion

        #region Page_Load
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #endregion

        #region NeedDataSource

        protected void GridCadastro_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            GridCadastro.DataSource = Framework.GetDataTable("SELECT ID, Nome, Sobrenome, DataNascimento, RG, Sexo, CEP, Endereço, Numero, Complemento, Bairro, Cidade, Estado, Telefone, Celular " +
                                                             "FROM tb_formulario " +
                                                             "WHERE Deleted = 0");
        }


        #endregion

        protected void ImgButton_Click(object sender, ImageClickEventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "JavaScript", "pesquisacep(txtCep.text)", true);
            ClientScript.RegisterStartupScript(this.GetType(), "JavaScript", "meu_callback(conteudo)", true);
        }
    }
}
