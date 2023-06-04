<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_index_documents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tells the search domain to start indexing its documents using the latest indexing options

### Description

Tells the search domain to start indexing its documents using the latest
indexing options. This operation must be invoked to activate options
whose OptionStatus is `RequiresIndexDocuments`.

### Usage

    cloudsearch_index_documents(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_index_documents_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FieldNames = list(
        "string"
      )
    )

### Request syntax

    svc$index_documents(
      DomainName = "string"
    )
