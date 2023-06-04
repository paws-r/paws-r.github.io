<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_get_resource_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the details about a resource set, including a list of the resources in the set

### Description

Displays the details about a resource set, including a list of the
resources in the set.

### Usage

    route53recoveryreadiness_get_resource_set(ResourceSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_resource_set_:_ResourceSetName">ResourceSetName</code></td>
<td><p>[required] Name of a resource set.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceSetArn = "string",
      ResourceSetName = "string",
      ResourceSetType = "string",
      Resources = list(
        list(
          ComponentId = "string",
          DnsTargetResource = list(
            DomainName = "string",
            HostedZoneArn = "string",
            RecordSetId = "string",
            RecordType = "string",
            TargetResource = list(
              NLBResource = list(
                Arn = "string"
              ),
              R53Resource = list(
                DomainName = "string",
                RecordSetId = "string"
              )
            )
          ),
          ReadinessScopes = list(
            "string"
          ),
          ResourceArn = "string"
        )
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_resource_set(
      ResourceSetName = "string"
    )
