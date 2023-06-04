<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_solution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates the configuration for training a model

### Description

Creates the configuration for training a model. A trained model is known
as a solution. After the configuration is created, you train the model
(create a solution) by calling the `create_solution_version` operation.
Every time you call `create_solution_version`, a new version of the
solution is created.

After creating a solution version, you check its accuracy by calling
`get_solution_metrics`. When you are satisfied with the version, you
deploy it using `create_campaign`. The campaign provides recommendations
to a client through the
[GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
API.

To train a model, Amazon Personalize requires training data and a
recipe. The training data comes from the dataset group that you provide
in the request. A recipe specifies the training algorithm and a feature
transformation. You can specify one of the predefined recipes provided
by Amazon Personalize. Alternatively, you can specify `performAutoML`
and Amazon Personalize will analyze your data and select the optimum
USER\_PERSONALIZATION recipe for you.

Amazon Personalize doesn't support configuring the `hpoObjective` for
solution hyperparameter optimization at this time.

**Status**

A solution can be in one of the following states:

-   CREATE PENDING \\ CREATE IN\_PROGRESS \\ ACTIVE -or- CREATE FAILED

-   DELETE PENDING \\ DELETE IN\_PROGRESS

To get the status of the solution, call `describe_solution`. Wait until
the status shows as ACTIVE before calling `create_solution_version`.

**Related APIs**

-   `list_solutions`

-   `create_solution_version`

-   `describe_solution`

-   `delete_solution`

-   `list_solution_versions`

-   `describe_solution_version`

### Usage

    personalize_create_solution(name, performHPO, performAutoML, recipeArn,
      datasetGroupArn, eventType, solutionConfig, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="personalize_create_solution_:_name">name</code></td>
<td><p>[required] The name for the solution.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_solution_:_performHPO">performHPO</code></td>
<td><p>Whether to perform hyperparameter optimization (HPO) on the
specified or selected recipe. The default is <code>false</code>.</p>
<p>When performing AutoML, this parameter is always <code>true</code>
and you should not set it to <code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_solution_:_performAutoML">performAutoML</code></td>
<td><p>Whether to perform automated machine learning (AutoML). The
default is <code>false</code>. For this case, you must specify
<code>recipeArn</code>.</p>
<p>When set to <code>true</code>, Amazon Personalize analyzes your
training data and selects the optimal USER_PERSONALIZATION recipe and
hyperparameters. In this case, you must omit <code>recipeArn</code>.
Amazon Personalize determines the optimal recipe by running tests with
different values for the hyperparameters. AutoML lengthens the training
process as compared to selecting a specific recipe.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_solution_:_recipeArn">recipeArn</code></td>
<td><p>The ARN of the recipe to use for model training. Only specified
when <code>performAutoML</code> is false.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_solution_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset group
that provides the training data.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_solution_:_eventType">eventType</code></td>
<td><p>When your have multiple event types (using an
<code>EVENT_TYPE</code> schema field), this parameter specifies which
event type (for example, 'click' or 'like') is used for training the
model.</p>
<p>If you do not provide an <code>eventType</code>, Amazon Personalize
will use all interactions for training with equal weight regardless of
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_solution_:_solutionConfig">solutionConfig</code></td>
<td><p>The configuration to use with the solution. When
<code>performAutoML</code> is set to true, Amazon Personalize only
evaluates the <code>autoMLConfig</code> section of the solution
configuration.</p>
<p>Amazon Personalize doesn't support configuring the
<code>hpoObjective</code> at this time.</p></td>
</tr>
<tr class="even">
<td><code id="personalize_create_solution_:_tags">tags</code></td>
<td><p>A list of tags to apply to the solution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      solutionArn = "string"
    )

### Request syntax

    svc$create_solution(
      name = "string",
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
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
