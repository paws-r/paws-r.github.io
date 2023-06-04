<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fis_update_experiment_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified experiment template

### Description

Updates the specified experiment template.

### Usage

    fis_update_experiment_template(id, description, stopConditions, targets,
      actions, roleArn, logConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fis_update_experiment_template_:_id">id</code></td>
<td><p>[required] The ID of the experiment template.</p></td>
</tr>
<tr class="even">
<td><code
id="fis_update_experiment_template_:_description">description</code></td>
<td><p>A description for the template.</p></td>
</tr>
<tr class="odd">
<td><code
id="fis_update_experiment_template_:_stopConditions">stopConditions</code></td>
<td><p>The stop conditions for the experiment.</p></td>
</tr>
<tr class="even">
<td><code
id="fis_update_experiment_template_:_targets">targets</code></td>
<td><p>The targets for the experiment.</p></td>
</tr>
<tr class="odd">
<td><code
id="fis_update_experiment_template_:_actions">actions</code></td>
<td><p>The actions for the experiment.</p></td>
</tr>
<tr class="even">
<td><code
id="fis_update_experiment_template_:_roleArn">roleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS
service permission to perform service actions on your behalf.</p></td>
</tr>
<tr class="odd">
<td><code
id="fis_update_experiment_template_:_logConfiguration">logConfiguration</code></td>
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

    svc$update_experiment_template(
      id = "string",
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
