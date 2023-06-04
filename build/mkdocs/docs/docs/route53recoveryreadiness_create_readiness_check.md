<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_create_readiness_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a readiness check in an account

### Description

Creates a readiness check in an account. A readiness check monitors a
resource set in your application, such as a set of Amazon Aurora
instances, that Application Recovery Controller is auditing recovery
readiness for. The audits run once every minute on every resource that's
associated with a readiness check.

### Usage

    route53recoveryreadiness_create_readiness_check(ReadinessCheckName,
      ResourceSetName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_create_readiness_check_:_ReadinessCheckName">ReadinessCheckName</code></td>
<td><p>[required] The name of the readiness check to create.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_create_readiness_check_:_ResourceSetName">ResourceSetName</code></td>
<td><p>[required] The name of the resource set to check.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoveryreadiness_create_readiness_check_:_Tags">Tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReadinessCheckArn = "string",
      ReadinessCheckName = "string",
      ResourceSet = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$create_readiness_check(
      ReadinessCheckName = "string",
      ResourceSetName = "string",
      Tags = list(
        "string"
      )
    )
