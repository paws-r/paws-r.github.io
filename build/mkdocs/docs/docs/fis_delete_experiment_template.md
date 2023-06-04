<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fis_delete_experiment_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified experiment template

### Description

Deletes the specified experiment template.

### Usage

    fis_delete_experiment_template(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fis_delete_experiment_template_:_id">id</code></td>
<td><p>[required] The ID of the experiment template.</p></td>
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

    svc$delete_experiment_template(
      id = "string"
    )
