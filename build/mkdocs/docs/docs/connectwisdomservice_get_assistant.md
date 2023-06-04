<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_get_assistant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about an assistant

### Description

Retrieves information about an assistant.

### Usage

    connectwisdomservice_get_assistant(assistantId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_get_assistant_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assistant = list(
        assistantArn = "string",
        assistantId = "string",
        description = "string",
        name = "string",
        serverSideEncryptionConfiguration = list(
          kmsKeyId = "string"
        ),
        status = "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"ACTIVE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETED",
        tags = list(
          "string"
        ),
        type = "AGENT"
      )
    )

### Request syntax

    svc$get_assistant(
      assistantId = "string"
    )
