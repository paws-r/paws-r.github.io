<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_use_case</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a use case for an integration association

### Description

Creates a use case for an integration association.

### Usage

    connect_create_use_case(InstanceId, IntegrationAssociationId,
      UseCaseType, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_use_case_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_use_case_:_IntegrationAssociationId">IntegrationAssociationId</code></td>
<td><p>[required] The identifier for the integration
association.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_use_case_:_UseCaseType">UseCaseType</code></td>
<td><p>[required] The type of use case to associate to the integration
association. Each integration association can have only one of each use
case type.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_use_case_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UseCaseId = "string",
      UseCaseArn = "string"
    )

### Request syntax

    svc$create_use_case(
      InstanceId = "string",
      IntegrationAssociationId = "string",
      UseCaseType = "RULES_EVALUATION"|"CONNECT_CAMPAIGNS",
      Tags = list(
        "string"
      )
    )
