<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_describe_scheduling_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your scheduling policies

### Description

Describes one or more of your scheduling policies.

### Usage

    batch_describe_scheduling_policies(arns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_describe_scheduling_policies_:_arns">arns</code></td>
<td><p>[required] A list of up to 100 scheduling policy Amazon Resource
Name (ARN) entries.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      schedulingPolicies = list(
        list(
          name = "string",
          arn = "string",
          fairsharePolicy = list(
            shareDecaySeconds = 123,
            computeReservation = 123,
            shareDistribution = list(
              list(
                shareIdentifier = "string",
                weightFactor = 123.0
              )
            )
          ),
          tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_scheduling_policies(
      arns = list(
        "string"
      )
    )
