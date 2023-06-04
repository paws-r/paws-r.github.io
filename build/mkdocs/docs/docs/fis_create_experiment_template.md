<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fis_create_experiment_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an experiment template

### Description

Creates an experiment template.

An experiment template includes the following components:

-   **Targets**: A target can be a specific resource in your Amazon Web
    Services environment, or one or more resources that match criteria
    that you specify, for example, resources that have specific tags.

-   **Actions**: The actions to carry out on the target. You can specify
    multiple actions, the duration of each action, and when to start
    each action during an experiment.

-   **Stop conditions**: If a stop condition is triggered while an
    experiment is running, the experiment is automatically stopped. You
    can define a stop condition as a CloudWatch alarm.

For more information, see [Experiment
templates](https://docs.aws.amazon.com/fis/latest/userguide/experiment-templates.html)
in the *Fault Injection Simulator User Guide*.

### Usage

    fis_create_experiment_template(clientToken, description, stopConditions,
      targets, actions, roleArn, tags, logConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fis_create_experiment_template_:_clientToken">clientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="fis_create_experiment_template_:_description">description</code></td>
<td><p>[required] A description for the experiment template.</p></td>
</tr>
<tr class="odd">
<td><code
id="fis_create_experiment_template_:_stopConditions">stopConditions</code></td>
<td><p>[required] The stop conditions.</p></td>
</tr>
<tr class="even">
<td><code
id="fis_create_experiment_template_:_targets">targets</code></td>
<td><p>The targets for the experiment.</p></td>
</tr>
<tr class="odd">
<td><code
id="fis_create_experiment_template_:_actions">actions</code></td>
<td><p>[required] The actions for the experiment.</p></td>
</tr>
<tr class="even">
<td><code
id="fis_create_experiment_template_:_roleArn">roleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role that
grants the FIS service permission to perform service actions on your
behalf.</p></td>
</tr>
<tr class="odd">
<td><code id="fis_create_experiment_template_:_tags">tags</code></td>
<td><p>The tags to apply to the experiment template.</p></td>
</tr>
<tr class="even">
<td><code
id="fis_create_experiment_template_:_logConfiguration">logConfiguration</code></td>
<td><p>The configuration for experiment logging.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      experimentTemplate = list(
        id = "string",
        description = "string",
        targets = list(
          list(
            resourceType = "string",
            resourceArns = list(
              "string"
            ),
            resourceTags = list(
              "string"
            ),
            filters = list(
              list(
                path = "string",
                values = list(
                  "string"
                )
              )
            ),
            selectionMode = "string",
            parameters = list(
              "string"
            )
          )
        ),
        actions = list(
          list(
            actionId = "string",
            description = "string",
            parameters = list(
              "string"
            ),
            targets = list(
              "string"
            ),
            startAfter = list(
              "string"
            )
          )
        ),
        stopConditions = list(
          list(
            source = "string",
            value = "string"
          )
        ),
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        roleArn = "string",
        tags = list(
          "string"
        ),
        logConfiguration = list(
          cloudWatchLogsConfiguration = list(
            logGroupArn = "string"
          ),
          s3Configuration = list(
            bucketName = "string",
            prefix = "string"
          ),
          logSchemaVersion = 123
        )
      )
    )

### Request syntax

    svc$create_experiment_template(
      clientToken = "string",
      description = "string",
      stopConditions = list(
        list(
          source = "string",
          value = "string"
        )
      ),
      targets = list(
        list(
          resourceType = "string",
          resourceArns = list(
            "string"
          ),
          resourceTags = list(
            "string"
          ),
          filters = list(
            list(
              path = "string",
              values = list(
                "string"
              )
            )
          ),
          selectionMode = "string",
          parameters = list(
            "string"
          )
        )
      ),
      actions = list(
        list(
          actionId = "string",
          description = "string",
          parameters = list(
            "string"
          ),
          targets = list(
            "string"
          ),
          startAfter = list(
            "string"
          )
        )
      ),
      roleArn = "string",
      tags = list(
        "string"
      ),
      logConfiguration = list(
        cloudWatchLogsConfiguration = list(
          logGroupArn = "string"
        ),
        s3Configuration = list(
          bucketName = "string",
          prefix = "string"
        ),
        logSchemaVersion = 123
      )
    )
