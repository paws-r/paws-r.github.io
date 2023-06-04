<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_create_activity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an activity

### Description

Creates an activity. An activity is a task that you write in any
programming language and host on any machine that has access to Step
Functions. Activities must poll Step Functions using the
`get_activity_task` API action and respond using `⁠SendTask*⁠` API
actions. This function lets Step Functions know the existence of your
activity and returns an identifier for use in a state machine and when
polling from the activity.

This operation is eventually consistent. The results are best effort and
may not reflect very recent updates and changes.

`create_activity` is an idempotent API. Subsequent requests won’t create
a duplicate resource if it was already created. `create_activity`'s
idempotency check is based on the activity `name`. If a following
request has different `tags` values, Step Functions will ignore these
differences and treat it as an idempotent request of the previous. In
this case, `tags` will not be updated, even if they are different.

### Usage

    sfn_create_activity(name, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sfn_create_activity_:_name">name</code></td>
<td><p>[required] The name of the activity to create. This name must be
unique for your Amazon Web Services account and region for 90 days. For
more information, see <a
href="https://docs.aws.amazon.com/step-functions/latest/dg/limits-overview.html#service-limits-state-machine-executions">Limits
Related to State Machine Executions</a> in the <em>Step Functions
Developer Guide</em>.</p>
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
<td><code id="sfn_create_activity_:_tags">tags</code></td>
<td><p>The list of tags to add to a resource.</p>
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
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      activityArn = "string",
      creationDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_activity(
      name = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
