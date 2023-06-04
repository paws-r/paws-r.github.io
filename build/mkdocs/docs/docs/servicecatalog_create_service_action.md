<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_create_service_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a self-service action

### Description

Creates a self-service action.

### Usage

    servicecatalog_create_service_action(Name, DefinitionType, Definition,
      Description, AcceptLanguage, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_create_service_action_:_Name">Name</code></td>
<td><p>[required] The self-service action name.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_service_action_:_DefinitionType">DefinitionType</code></td>
<td><p>[required] The service action definition type. For example,
<code>SSM_AUTOMATION</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_service_action_:_Definition">Definition</code></td>
<td><p>[required] The self-service action definition. Can be one of the
following:</p>
<p><strong>Name</strong></p>
<p>The name of the Amazon Web Services Systems Manager document (SSM
document). For example, <code>AWS-RestartEC2Instance</code>.</p>
<p>If you are using a shared SSM document, you must provide the ARN
instead of the name.</p>
<p><strong>Version</strong></p>
<p>The Amazon Web Services Systems Manager automation document version.
For example, <code>"Version": "1"</code></p>
<p><strong>AssumeRole</strong></p>
<p>The Amazon Resource Name (ARN) of the role that performs the
self-service actions on your behalf. For example,
<code>"AssumeRole": "arn:aws:iam::12345678910:role/ActionRole"</code>.</p>
<p>To reuse the provisioned product launch role, set to
<code>"AssumeRole": "LAUNCH_ROLE"</code>.</p>
<p><strong>Parameters</strong></p>
<p>The list of parameters in JSON format.</p>
<p>For example: <code
style="white-space: pre;">⁠[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]⁠</code>
or <code
style="white-space: pre;">⁠[{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}]⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_service_action_:_Description">Description</code></td>
<td><p>The self-service action description.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_service_action_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_service_action_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] A unique identifier that you provide to ensure
idempotency. If multiple requests differ only by the idempotency token,
the same response is returned for each repeated request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceActionDetail = list(
        ServiceActionSummary = list(
          Id = "string",
          Name = "string",
          Description = "string",
          DefinitionType = "SSM_AUTOMATION"
        ),
        Definition = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_service_action(
      Name = "string",
      DefinitionType = "SSM_AUTOMATION",
      Definition = list(
        "string"
      ),
      Description = "string",
      AcceptLanguage = "string",
      IdempotencyToken = "string"
    )
