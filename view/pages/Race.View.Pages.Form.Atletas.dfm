inherited PageAtletas: TPageAtletas
  Caption = 'PageAtletas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    inherited pnlTop: TPanel
      inherited pnlTopBody: TPanel
        inherited btnRelatorios: TSpeedButton
          ExplicitHeight = 90
        end
        inherited SpeedButton1: TSpeedButton
          ExplicitHeight = 90
        end
        inherited SpeedButton2: TSpeedButton
          ExplicitHeight = 90
        end
      end
    end
    inherited pnlMain: TPanel
      inherited pnlMainBody: TPanel
        inherited pnlMainBodyData: TPanel
          inherited pnlMainBodyDataForm: TPanel
            Left = 0
            Width = 700
            inherited pnlMainCadastroBotton: TPanel
              Width = 650
              inherited btnFechar: TSpeedButton
                Left = 510
                ExplicitLeft = 516
                ExplicitTop = 6
              end
              inherited btnSalvar: TSpeedButton
                Left = 370
              end
              inherited pnlMainCadastroBottonLine: TPanel
                Width = 650
              end
            end
            object StackPanel1: TStackPanel
              Left = 25
              Top = 0
              Width = 272
              Height = 227
              Align = alLeft
              BevelOuter = bvNone
              ControlCollection = <
                item
                  Control = Label1
                end
                item
                  Control = DBEdit1
                end
                item
                  Control = Label3
                end
                item
                  Control = DBEdit2
                end>
              HorizontalPositioning = sphpFill
              Padding.Left = 15
              Padding.Right = 15
              Spacing = 5
              TabOrder = 1
              object Label1: TLabel
                Left = 15
                Top = 0
                Width = 242
                Height = 13
                Caption = 'C'#243'digo'
              end
              object DBEdit1: TDBEdit
                Left = 15
                Top = 18
                Width = 242
                Height = 21
                DataField = 'id'
                DataSource = DataSource1
                TabOrder = 0
              end
              object Label3: TLabel
                Left = 15
                Top = 44
                Width = 242
                Height = 13
                Caption = 'Categoria'
              end
              object DBEdit2: TDBEdit
                Left = 15
                Top = 62
                Width = 242
                Height = 21
                DataField = 'categoria'
                DataSource = DataSource1
                TabOrder = 1
              end
            end
            object StackPanel2: TStackPanel
              Left = 297
              Top = 0
              Width = 304
              Height = 227
              Align = alLeft
              BevelOuter = bvNone
              ControlCollection = <
                item
                  Control = Label2
                end
                item
                  Control = DBEdit3
                end>
              HorizontalPositioning = sphpFill
              Padding.Left = 15
              Padding.Right = 15
              Spacing = 5
              TabOrder = 2
              ExplicitLeft = 303
              ExplicitTop = -5
              object Label2: TLabel
                Left = 15
                Top = 0
                Width = 274
                Height = 13
                Caption = 'Nome'
              end
              object DBEdit3: TDBEdit
                Left = 15
                Top = 18
                Width = 274
                Height = 21
                DataField = 'nome'
                DataSource = DataSource1
                TabOrder = 0
              end
            end
          end
          inherited DBGrid1: TDBGrid
            Width = 0
            Font.Style = [fsBold]
            ParentFont = False
            Columns = <
              item
                Expanded = False
                FieldName = 'nome'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'categoria'
                Width = 200
                Visible = True
              end>
          end
        end
      end
    end
  end
end
