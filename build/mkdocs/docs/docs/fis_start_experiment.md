<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fis_start_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts running an experiment from the specified experiment template

### Description

Starts running an experiment from the specified experiment template.

### Usage

    fis_start_experiment(clientToken, experimentTemplateId, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fis_start_experiment_:_clientToken">clientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="fis_start_experiment_:_experimentTemplateId">experimentTemplateId</code></td>
<td><p>[required] The ID of the experiment template.</p></td>
</tr>
<tr class="odd">
<td><code id="fis_start_experiment_:_tags">tags</code></td>
<td><p>The tags to apply to the experiment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      experiment = list(
        id = "string",
        experimentTemplateId = "string",
        roleArn = "string",
        state = list(
          status = "pending"|"initiating"|"running"|"completed"|"stopping"|"stopped"|"failed",
          reason = "string"
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
            ),
            state = list(
              status = "pending"|"initiating"|"running"|"completed"|"cancelled"|"stopping"|"stopped"|"failed",
              reason = "string"
            ),
            startTime = as.POSIXct(
              "2015-01-01"
            ),
            endTime = as.POSIXct(
              "2015-01-01"
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
        startTime = as.POSIXct(
          "2015-01-01"
        ),
        endTime = as.POSIXct(
          "2015-01-01"
        ),
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

    svc$start_experiment(
      clientToken = "string",
      experimentTemplateId = "string",
      tags = list(
        "string"
      )
    )
