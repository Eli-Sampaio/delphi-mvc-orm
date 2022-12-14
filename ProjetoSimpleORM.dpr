program ProjetoSimpleORM;

{$R *.dres}

uses
  Vcl.Forms,
  projetosimpleorm.view.pages.cliente in 'src\view\pages\projetosimpleorm.view.pages.cliente.pas' {PageCliente},
  projetosimpleorm.view.pages.configuracoes in 'src\view\pages\projetosimpleorm.view.pages.configuracoes.pas' {PageConfiguracoes},
  projetosimpleorm.view.pages.pedidovenda in 'src\view\pages\projetosimpleorm.view.pages.pedidovenda.pas' {PagePedidoVenda},
  projetosimpleorm.view.pages.produto in 'src\view\pages\projetosimpleorm.view.pages.produto.pas' {PageProduto},
  projetosimpleorm.view.utils.interfaces in 'src\view\utils\projetosimpleorm.view.utils.interfaces.pas',
  projetosimpleorm.view.utils.impl.forms in 'src\view\utils\impl\projetosimpleorm.view.utils.impl.forms.pas',
  projetosimpleorm.view.utils.impl.gerenciadorforms in 'src\view\utils\impl\projetosimpleorm.view.utils.impl.gerenciadorforms.pas',
  projetosimpleorm.view.utils.impl.resourceimage in 'src\view\utils\impl\projetosimpleorm.view.utils.impl.resourceimage.pas',
  projetosimpleorm.model.interfaces in 'src\model\projetosimpleorm.model.interfaces.pas',
  projetosimpleorm.model.impl.configuracao in 'src\model\Impl\projetosimpleorm.model.impl.configuracao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPageCliente, PageCliente);
  Application.CreateForm(TPageConfiguracoes, PageConfiguracoes);
  Application.CreateForm(TPagePedidoVenda, PagePedidoVenda);
  Application.CreateForm(TPageProduto, PageProduto);
  Application.Run;
end.
