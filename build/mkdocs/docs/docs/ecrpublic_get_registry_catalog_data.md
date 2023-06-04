<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_get_registry_catalog_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves catalog metadata for a public registry

### Description

Retrieves catalog metadata for a public registry.

### Usage

    ecrpublic_get_registry_catalog_data()

### Value

A list with the following syntax:

    list(
      registryCatalogData = list(
        displayName = "string"
      )
    )

### Request syntax

    svc$get_registry_catalog_data()
