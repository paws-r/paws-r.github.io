<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_create_assistant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Connect Wisdom assistant

### Description

Creates an Amazon Connect Wisdom assistant.

### Usage

    connectwisdomservice_create_assistant(clientToken, description, name,
      serverSideEncryptionConfiguration, tags, type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_create_assistant_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_assistant_:_description">description</code></td>
<td><p>The description of the assistant.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_assistant_:_name">name</code></td>
<td><p>[required] The name of the assistant.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_assistant_:_serverSideEncryptionConfiguration">serverSideEncryptionConfiguration</code></td>
<td><p>The KMS key used for encryption.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_assistant_:_tags">tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_assistant_:_type">type</code></td>
<td><p>[required] The type of assistant.</p></td>
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

    svc$create_assistant(
      clientToken = "string",
      description = "string",
      name = "string",
      serverSideEncryptionConfiguration = list(
        kmsKeyId = "string"
      ),
      tags = list(
        "string"
      ),
      type = "AGENT"
    )
