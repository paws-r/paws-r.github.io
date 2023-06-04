<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_register_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a new domain

### Description

Registers a new domain.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

-   You cannot use an IAM policy to control domain access for this
    action. The name of the domain being registered is available as the
    resource of this action.

-   Use an `Action` element to allow or deny permission to call this
    action.

-   You cannot use an IAM policy to constrain this action's parameters.

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's `cause` parameter is set
to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see
[Using IAM to Manage Access to Amazon SWF
Workflows](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the *Amazon SWF Developer Guide*.

### Usage

    swf_register_domain(name, description,
      workflowExecutionRetentionPeriodInDays, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_register_domain_:_name">name</code></td>
<td><p>[required] Name of the domain to register. The name must be
unique in the region that the domain is registered in.</p>
<p>The specified string must not start or end with whitespace. It must
not contain a <code>:</code> (colon), <code>/</code> (slash),
<code>|</code> (vertical bar), or any control characters (<code
style="white-space: pre;">⁠U+0000`-`U+001f⁠</code> | <code
style="white-space: pre;">⁠U+007f`-`U+009f⁠</code>). Also, it must
<em>not</em> be the literal string <code>arn</code>.</p></td>
</tr>
<tr class="even">
<td><code id="swf_register_domain_:_description">description</code></td>
<td><p>A text description of the domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_register_domain_:_workflowExecutionRetentionPeriodInDays">workflowExecutionRetentionPeriodInDays</code></td>
<td><p>[required] The duration (in days) that records and histories of
workflow executions on the domain should be kept by the service. After
the retention period, the workflow execution isn't available in the
results of visibility calls.</p>
<p>If you pass the value <code>NONE</code> or <code>0</code> (zero),
then the workflow execution history isn't retained. As soon as the
workflow execution completes, the execution record and its history are
deleted.</p>
<p>The maximum workflow execution retention period is 90 days. For more
information about Amazon SWF service limits, see: <a
href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html">Amazon
SWF Service Limits</a> in the <em>Amazon SWF Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="swf_register_domain_:_tags">tags</code></td>
<td><p>Tags to be added when registering a domain.</p>
<p>Tags may only contain unicode letters, digits, whitespace, or these
symbols: <code
style="white-space: pre;">⁠_ . : / = + - @⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_domain(
      name = "string",
      description = "string",
      workflowExecutionRetentionPeriodInDays = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
