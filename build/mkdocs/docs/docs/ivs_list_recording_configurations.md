<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_list_recording_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets summary information about all recording configurations in your account, in the Amazon Web Services region where the API request is processed

### Description

Gets summary information about all recording configurations in your
account, in the Amazon Web Services region where the API request is
processed.

### Usage

    ivs_list_recording_configurations(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivs_list_recording_configurations_:_maxResults">maxResults</code></td>
<td><p>Maximum number of recording configurations to return. Default:
your service quota or 100, whichever is smaller.</p></td>
</tr>
<tr class="even">
<td><code
id="ivs_list_recording_configurations_:_nextToken">nextToken</code></td>
<td><p>The first recording configuration to retrieve. This is used for
pagination; see the <code>nextToken</code> response field.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      recordingConfigurations = list(
        list(
          arn = "string",
          destinationConfiguration = list(
            s3 = list(
              bucketName = "string"
            )
          ),
          name = "string",
          state = "CREATING"|"CREATE_FAILED"|"ACTIVE",
          tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_recording_configurations(
      maxResults = 123,
      nextToken = "string"
    )
