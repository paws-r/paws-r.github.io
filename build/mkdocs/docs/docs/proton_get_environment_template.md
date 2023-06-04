<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_environment_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get detailed data for an environment template

### Description

Get detailed data for an environment template.

### Usage

    proton_get_environment_template(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_get_environment_template_:_name">name</code></td>
<td><p>[required] The name of the environment template that you want to
get the detailed data for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environmentTemplate = list(
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
        provisioning = "CUSTOMER_MANAGED",
        recommendedVersion = "string"
      )
    )

### Request syntax

    svc$get_environment_template(
      name = "string"
    )
