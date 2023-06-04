<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_put_registry_catalog_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create or update the catalog data for a public registry

### Description

Create or update the catalog data for a public registry.

### Usage

    ecrpublic_put_registry_catalog_data(displayName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecrpublic_put_registry_catalog_data_:_displayName">displayName</code></td>
<td><p>The display name for a public registry. The display name is shown
as the repository author in the Amazon ECR Public Gallery.</p>
<p>The registry display name is only publicly visible in the Amazon ECR
Public Gallery for verified accounts.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryCatalogData = list(
        displayName = "string"
      )
    )

### Request syntax

    svc$put_registry_catalog_data(
      displayName = "string"
    )
