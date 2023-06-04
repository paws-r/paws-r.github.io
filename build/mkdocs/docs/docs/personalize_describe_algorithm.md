<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_algorithm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the given algorithm

### Description

Describes the given algorithm.

### Usage

    personalize_describe_algorithm(algorithmArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_algorithm_:_algorithmArn">algorithmArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the algorithm to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      algorithm = list(
        name = "string",
        algorithmArn = "string",
        algorithmImage = list(
          name = "string",
          dockerURI = "string"
        ),
        defaultHyperParameters = list(
          "string"
        ),
        defaultHyperParameterRanges = list(
          integerHyperParameterRanges = list(
            list(
              name = "string",
              minValue = 123,
              maxValue = 123,
              isTunable = TRUE|FALSE
            )
          ),
          continuousHyperParameterRanges = list(
            list(
              name = "string",
              minValue = 123.0,
              maxValue = 123.0,
              isTunable = TRUE|FALSE
            )
          ),
          categoricalHyperParameterRanges = list(
            list(
              name = "string",
              values = list(
                "string"
              ),
              isTunable = TRUE|FALSE
            )
          )
        ),
        defaultResourceConfig = list(
          "string"
        ),
        trainingInputMode = "string",
        roleArn = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_algorithm(
      algorithmArn = "string"
    )
