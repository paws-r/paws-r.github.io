<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_solution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a solution

### Description

Describes a solution. For more information on solutions, see
`create_solution`.

### Usage

    personalize_describe_solution(solutionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_solution_:_solutionArn">solutionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the solution to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      solution = list(
        name = "string",
        solutionArn = "string",
        performHPO = TRUE|FALSE,
        performAutoML = TRUE|FALSE,
        recipeArn = "string",
        datasetGroupArn = "string",
        eventType = "string",
        solutionConfig = list(
          eventValueThreshold = "string",
          hpoConfig = list(
            hpoObjective = list(
              type = "string",
              metricName = "string",
              metricRegex = "string"
            ),
            hpoResourceConfig = list(
              maxNumberOfTrainingJobs = "string",
              maxParallelTrainingJobs = "string"
            ),
            algorithmHyperParameterRanges = list(
              integerHyperParameterRanges = list(
                list(
                  name = "string",
                  minValue = 123,
                  maxValue = 123
                )
              ),
              continuousHyperParameterRanges = list(
                list(
                  name = "string",
                  minValue = 123.0,
                  maxValue = 123.0
                )
              ),
              categoricalHyperParameterRanges = list(
                list(
                  name = "string",
                  values = list(
                    "string"
                  )
                )
              )
            )
          ),
          algorithmHyperParameters = list(
            "string"
          ),
          featureTransformationParameters = list(
            "string"
          ),
          autoMLConfig = list(
            metricName = "string",
            recipeList = list(
              "string"
            )
          ),
          optimizationObjective = list(
            itemAttribute = "string",
            objectiveSensitivity = "LOW"|"MEDIUM"|"HIGH"|"OFF"
          )
        ),
        autoMLResult = list(
          bestRecipeArn = "string"
        ),
        status = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        latestSolutionVersion = list(
          solutionVersionArn = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          failureReason = "string"
        )
      )
    )

### Request syntax

    svc$describe_solution(
      solutionArn = "string"
    )
