<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioCadastro.aspx.cs" Inherits="FormularioCadastro4._0.FormularioCadastro" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <telerik:RadScriptManager ID="RadScriptManager" runat="server"></telerik:RadScriptManager>
            <asp:Button ID="btNovoCadastro" runat="server" Text="Novo Cadastro" OnClick="btNovoCadastro_Click" />
            <br />
            <br />
            <asp:Panel ID="pnlCadastro" runat="server" Visible="false">
                <asp:Table ID="tb_CadLogin" runat="server">
                    <asp:TableRow>

                        <asp:TableCell>
                            <telerik:RadLabel ID="lbCPF" runat="server" Text="CPF"></telerik:RadLabel>
                            <br />
                            <telerik:RadTextBox ID="txtCPF" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow>

                        <asp:TableCell>
                            <asp:Label ID="lbEmail" runat="server" Text="E-mail"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtEmail" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbConfirma_Email" runat="server" Text="Confirmar E-mail"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtConfirmaEmail" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbSenha" runat="server" Text="Senha"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtSenha" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbConfirmarSenha" runat="server" Text="Confirmar Senha"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtConfirmarSenha" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                    </asp:TableRow>

                </asp:Table>
                <br />
                <asp:Table ID="tb_CadContato" runat="server">
                    <asp:TableRow>

                        <asp:TableCell>
                            <asp:Label ID="lbNome" runat="server" Text="Nome"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtNome" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbSobrenome" runat="server" Text="Sobrenome"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtSobrenome" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow>

                        <asp:TableCell>
                            <asp:Label ID="lbNascimento" runat="server" Text="Data de Nascimento"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtNascimento" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbRG" runat="server" Text="RG"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtRG" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:DropDownList ID="ddlSex" runat="server">
                                <asp:ListItem>Masculino</asp:ListItem>
                                <asp:ListItem>Feminino</asp:ListItem>
                                <asp:ListItem>Outro</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lbCEP" runat="server" Text="CEP"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtCEP" runat="server"></telerik:RadTextBox>
                            <asp:ImageButton ID="ImgButton" runat="server" OnClick="ImgButton_Click" />
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbEndereco" runat="server" Text="Endereço"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtEndereco" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbNumero" runat="server" Text="Número"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtNumero" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow>

                        <asp:TableCell>
                            <asp:Label ID="lbComplemento" runat="server" Text="Complemento"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtComplemento" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbBairro" runat="server" Text="Bairro"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtBairro" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbCidade" runat="server" Text="Cidade"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtCidade" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow>

                        <asp:TableCell>
                            <asp:DropDownList ID="ddlEstados" runat="server">
                                <asp:ListItem>AC</asp:ListItem>
                                <asp:ListItem>AL</asp:ListItem>
                                <asp:ListItem>AP</asp:ListItem>
                                <asp:ListItem>AM</asp:ListItem>
                                <asp:ListItem>BA</asp:ListItem>
                                <asp:ListItem>CE</asp:ListItem>
                                <asp:ListItem>DF</asp:ListItem>
                                <asp:ListItem>ES</asp:ListItem>
                                <asp:ListItem>GO</asp:ListItem>
                                <asp:ListItem>MA</asp:ListItem>
                                <asp:ListItem>MT</asp:ListItem>
                                <asp:ListItem>MS</asp:ListItem>
                                <asp:ListItem>MG</asp:ListItem>
                                <asp:ListItem>PA</asp:ListItem>
                                <asp:ListItem>PB</asp:ListItem>
                                <asp:ListItem>PR</asp:ListItem>
                                <asp:ListItem>PE</asp:ListItem>
                                <asp:ListItem>PI</asp:ListItem>
                                <asp:ListItem>RJ</asp:ListItem>
                                <asp:ListItem>RN</asp:ListItem>
                                <asp:ListItem>RS</asp:ListItem>
                                <asp:ListItem>RO</asp:ListItem>
                                <asp:ListItem>RR</asp:ListItem>
                                <asp:ListItem>SC</asp:ListItem>
                                <asp:ListItem>SP</asp:ListItem>
                                <asp:ListItem>SE</asp:ListItem>
                                <asp:ListItem>TO</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbTelefon" runat="server" Text="DDD+Telefone"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtTelefone" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                        <asp:TableCell>
                            <asp:Label ID="lbCelular" runat="server" Text="DDD+Celular"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="txtCelular" runat="server"></telerik:RadTextBox>
                        </asp:TableCell>

                    </asp:TableRow>
                </asp:Table>
                <br />
                <asp:Button ID="btCadastrar" runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" /><br />
            </asp:Panel>
            <asp:Panel ID="pnlGridCadastro" runat="server" Visible="true">
                <%--Tabela GRID--%>
                <telerik:RadGrid ID="GridCadastro" runat="server"
                    OnNeedDataSource="GridCadastro_NeedDataSource"
                    OnItemCommand="GridCadastro_ItemCommand"
                    AutoGenerateColumns="false">
                    <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
                    <MasterTableView DataKeyNames="ID">
                        <Columns>
                            <%--Botoes GRID--%>
                            <telerik:GridTemplateColumn
                                UniqueName="OP"
                                AllowFiltering="false">
                                <ItemTemplate>

                                    <asp:Button ID="btEditar"
                                        runat="server"
                                        Text="Editar"
                                        CommandName="opEditar" />&nbsp

                                    <asp:Button ID="btExcluir"
                                        runat="server"
                                        Text="Excluir"
                                        CommandName="opExcluir" />

                                </ItemTemplate>
                            </telerik:GridTemplateColumn>

                            <%--Colunas GRID--%>

                            <%--                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="CPF"
                                HeaderText="CPF">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Email"
                                HeaderText="E-mail">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="CPF"
                                HeaderText="CPF">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Senha"
                                HeaderText="Senha" >
                            </telerik:GridBoundColumn>
                            --%>
                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Nome"
                                HeaderText="Nome">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Sobrenome"
                                HeaderText="Sobrenome">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="DataNascimento"
                                HeaderText="Data de Nascimento">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="RG"
                                HeaderText="RG (Registro Geral)">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Sexo"
                                HeaderText="Gênero">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="CEP"
                                HeaderText="CEP">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Endereço"
                                HeaderText="Endereço">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Numero"
                                HeaderText="Nº">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Complemento"
                                HeaderText="Complemento">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Bairro"
                                HeaderText="Bairro">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Cidade"
                                HeaderText="Cidade">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Estado"
                                HeaderText="UF">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Telefone"
                                HeaderText="DDD + Telefone">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn
                                FilterControlAltText="Filter column column"
                                UniqueName="column"
                                DataField="Celular"
                                HeaderText="DDD + Celular">
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
                <br />
            </asp:Panel>
            <asp:HiddenField ID="hdfFormID" runat="server" />
        </div>
        
    </form>
</body>
</html>
