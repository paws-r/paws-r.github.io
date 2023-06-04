<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_delete_service_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## If no other major or minor versions of the service template exist, delete the service template

### Description

If no other major or minor versions of the service template exist,
delete the service template.

### Usage

    proton_delete_service_template(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_delete_service_template_:_name">name</code></td>
<td><p>[required] The name of the service template to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      serviceTemplate = list(
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        displayName = "string",
        encryptionKey = "string",
        lastModifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        pipelineProvisioning = "CUSTOMER_MANAGED",
        recommendedVersion = "string"
      )
    )

### Request syntax

    svc$delete_service_template(
      name = "string"
    )
