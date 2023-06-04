<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_get_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the template body for a specified stack

### Description

Returns the template body for a specified stack. You can get the
template for running or deleted stacks.

For deleted stacks, `get_template` returns the template for up to 90
days after the stack has been deleted.

If the template doesn't exist, a `ValidationError` is returned.

### Usage

    cloudformation_get_template(StackName, ChangeSetName, TemplateStage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_get_template_:_StackName">StackName</code></td>
<td><p>The name or the unique stack ID that's associated with the stack,
which aren't always interchangeable:</p>
<ul>
<li><p>Running stacks: You can specify either the stack's name or its
unique stack ID.</p></li>
<li><p>Deleted stacks: You must specify the unique stack ID.</p></li>
</ul>
<p>Default: There is no default value.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_get_template_:_ChangeSetName">ChangeSetName</code></td>
<td><p>The name or Amazon Resource Name (ARN) of a change set for which
CloudFormation returns the associated template. If you specify a name,
you must also specify the <code>StackName</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_get_template_:_TemplateStage">TemplateStage</code></td>
<td><p>For templates that include transforms, the stage of the template
that CloudFormation returns. To get the user-submitted template, specify
<code>Original</code>. To get the template after CloudFormation has
processed all transforms, specify <code>Processed</code>.</p>
<p>If the template doesn't include transforms, <code>Original</code> and
<code>Processed</code> return the same template. By default,
CloudFormation specifies <code>Processed</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplateBody = "string",
      StagesAvailable = list(
        "Original"|"Processed"
      )
    )

### Request syntax

    svc$get_template(
      StackName = "string",
      ChangeSetName = "string",
      TemplateStage = "Original"|"Processed"
    )
