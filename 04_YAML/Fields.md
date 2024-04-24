# Tipes of fields

richText -> Crea un campo de texto enriquecido.
   asset -> Crea un  campo de enlace  para elegir un activo.

# Multi SIMPLE
label: General Information                                              
form:
  properties:
    multi:
      i18n: true
      $type: jcrMultiField
      label: Address list
      field:
        $type: compositeField
        label: Address
        properties:

          street:
            $type: textField
            label: Street

          jcrMultiLinkField:
            $type: linkField
            label: Multi link page
            field:
              $type: linkField
              label: Page
              datasource:
                $type: jcrDatasource
                workspace: website

          damMultiLinkField:
            $type: linkField
            label: Multi link image
            chooserId: dam-app-core:multiChooser
            field:
              $type: damLinkField
              label: Asset

# Multiple NESTED
label: General Information 
form:
  properties:

    multi:
      i18n: true
      $type: jcrMultiField
      label: Address list
      field:
        $type: compositeField
        label: Address
        properties:
          street:
            $type: textField
            label: Street

          jcrMultiLinkField:
            $type: jcrMultiLinkField
            label: Simple link page
            field:
              $type: linkField
              label: Page
              datasource:
                $type: jcrDatasource
                workspace: website

          damMultiLinkField:
            $type: jcrMultiLinkField
            label: Simple link image
            chooserId: dam-app-core:multiChooser
            field:
              $type: damLinkField
              label: Asset

# Selected
category:                                                          #         Field -> Column
  $type: comboBoxField                                             #          Type -> Input
  type: java.lang.String                                           #          Data -> Type
  required: false                                                  #          Data -> Mandatory
  i18n: true                                                       #     Translate -> Active
  datasource:                                                      #    Datasource -> Definition
    $type: optionListDatasource                                    #    Datasource -> Type
    options:                                                       #         Input -> Select

      travels:                                                     #        Select -> Option 
        value: travels                                             #        Option -> Value

      sports:                                                      #        Select -> Option 
        value: sports                                              #        Option -> Value

      events:                                                      #        Select -> Option 
        value: events                                              #        Option -> Value
        selected: true                                             #      Selected -> Default

      services:                                                    #        Select -> Option 
        value: services                                            #        Option -> Value

      share:                                                       #        Select -> Option 
        value: share                                               #        Option -> Value

      games:                                                       #        Select -> Option 
        value: games                                               #        Option -> Value