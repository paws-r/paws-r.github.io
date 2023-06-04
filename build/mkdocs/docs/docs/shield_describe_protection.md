<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_describe_protection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the details of a Protection object

### Description

Lists the details of a Protection object.

### Usage

    shield_describe_protection(ProtectionId, ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_describe_protection_:_ProtectionId">ProtectionId</code></td>
<td><p>The unique identifier (ID) for the Protection object to describe.
You must provide either the <code>ResourceArn</code> of the protected
resource or the <code>ProtectionID</code> of the protection, but not
both.</p></td>
</tr>
<tr class="even">
<td><code
id="shield_describe_protection_:_ResourceArn">ResourceArn</code></td>
<td><p>The ARN (Amazon Resource Name) of the protected Amazon Web
Services resource. You must provide either the <code>ResourceArn</code>
of the protected resource or the <code>ProtectionID</code> of the
protection, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Protection = list(
        Id = "string",
        Name = "string",
        ResourceArn = "string",
        HealthCheckIds = list(
          "string"
        ),
        ProtectionArn = "string",
        ApplicationLayerAutomaticResponseConfiguration = list(
          Status = "ENABLED"|"DISABLED",
          Action = list(
            Block = list(),
            Count = list()
          )
        )
      )
    )

### Request syntax

    svc$describe_protection(
      ProtectionId = "string",
      ResourceArn = "string"
    )
