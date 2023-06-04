<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_create_state_machine</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a state machine

### Description

Creates a state machine. A state machine consists of a collection of
states that can do work (`Task` states), determine to which states to
transition next (`Choice` states), stop an execution with an error
(`Fail` states), and so on. State machines are specified using a
JSON-based, structured language. For more information, see [Amazon
States
Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html)
in the Step Functions User Guide.

This operation is eventually consistent. The results are best effort and
may not reflect very recent updates and changes.

`create_state_machine` is an idempotent API. Subsequent requests won’t
create a duplicate resource if it was already created.
`create_state_machine`'s idempotency check is based on the state machine
`name`, `definition`, `type`, `LoggingConfiguration` and
`TracingConfiguration`. If a following request has a different `roleArn`
or `tags`, Step Functions will ignore these differences and treat it as
an idempotent request of the previous. In this case, `roleArn` and
`tags` will not be updated, even if they are different.

### Usage

    sfn_create_state_machine(name, definition, roleArn, type,
      loggingConfiguration, tags, tracingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sfn_create_state_machine_:_name">name</code></td>
<td><p>[required] The name of the state machine.</p>
<p>A name must <em>not</em> contain:</p>
<ul>
<li><p>white space</p></li>
<li><p>brackets <code
style="white-space: pre;">⁠&lt; &gt; { } [ ]⁠</code></p></li>
<li><p>wildcard characters <code
style="white-space: pre;">⁠? *⁠</code></p></li>
<li><p>special characters <code
style="white-space: pre;">⁠\" # % \ ^ | ~ \` $ &amp; , ; : /⁠</code></p></li>
<li><p>control characters (<code
style="white-space: pre;">⁠U+0000-001F⁠</code>, <code
style="white-space: pre;">⁠U+007F-009F⁠</code>)</p></li>
</ul>
<p>To enable logging with CloudWatch Logs, the name should only contain
0-9, A-Z, a-z, - and _.</p>
<p>[ ]: R:%20</p></td>
</tr>
<tr class="even">
<td><code
id="sfn_create_state_machine_:_definition">definition</code></td>
<td><p>[required] The Amazon States Language definition of the state
machine. See <a
href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon
States Language</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="sfn_create_state_machine_:_roleArn">roleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role to use
for this state machine.</p></td>
</tr>
<tr class="even">
<td><code id="sfn_create_state_machine_:_type">type</code></td>
<td><p>Determines whether a Standard or Express state machine is
created. The default is <code>STANDARD</code>. You cannot update the
<code>type</code> of a state machine once it has been created.</p></td>
</tr>
<tr class="odd">
<td><code
id="sfn_create_state_machine_:_loggingConfiguration">loggingConfiguration</code></td>
<td><p>Defines what execution history events are logged and where they
are logged.</p>
<p>By default, the <code>level</code> is set to <code>OFF</code>. For
more information see <a
href="https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html">Log
Levels</a> in the Step Functions User Guide.</p></td>
</tr>
<tr class="even">
<td><code id="sfn_create_state_machine_:_tags">tags</code></td>
<td><p>Tags to be added when creating a state machine.</p>
<p>An array of key-value pairs. For more information, see <a
href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
Cost Allocation Tags</a> in the <em>Amazon Web Services Billing and Cost
Management User Guide</em>, and <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling
Access Using IAM Tags</a>.</p>
<p>Tags may only contain Unicode letters, digits, white space, or these
symbols: <code
style="white-space: pre;">⁠_ . : / = + - @⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sfn_create_state_machine_:_tracingConfiguration">tracingConfiguration</code></td>
<td><p>Selects whether X-Ray tracing is enabled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      stateMachineArn = "string",
      creationDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_state_machine(
      name = "string",
      definition = "string",
      roleArn = "string",
      type = "STANDARD"|"EXPRESS",
      loggingConfiguration = list(
        level = "ALL"|"ERROR"|"FATAL"|"OFF",
        includeExecutionData = TRUE|FALSE,
        destinations = list(
          list(
            cloudWatchLogsLogGroup = list(
              logGroupArn = "string"
            )
          )
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      tracingConfiguration = list(
        enabled = TRUE|FALSE
      )
    )
