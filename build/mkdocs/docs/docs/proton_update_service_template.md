<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_service_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a service template

### Description

Update a service template.

### Usage

    proton_update_service_template(description, displayName, name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_update_service_template_:_description">description</code></td>
<td><p>A description of the service template update.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_service_template_:_displayName">displayName</code></td>
<td><p>The name of the service template to update that's displayed in
the developer interface.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_update_service_template_:_name">name</code></td>
<td><p>[required] The name of the service template to update.</p></td>
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

    svc$update_service_template(
      description = "string",
      displayName = "string",
      name = "string"
    )
