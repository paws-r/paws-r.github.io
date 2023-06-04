<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_estimate_template_cost</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the estimated monthly cost of a template

### Description

Returns the estimated monthly cost of a template. The return value is an
Amazon Web Services Simple Monthly Calculator URL with a query string
that describes the resources required to run the template.

### Usage

    cloudformation_estimate_template_cost(TemplateBody, TemplateURL,
      Parameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_estimate_template_cost_:_TemplateBody">TemplateBody</code></td>
<td><p>Structure containing the template body with a minimum length of 1
byte and a maximum length of 51,200 bytes. (For more information, go to
<a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template
Anatomy</a> in the CloudFormation User Guide.)</p>
<p>Conditional: You must pass <code>TemplateBody</code> or
<code>TemplateURL</code>. If both are passed, only
<code>TemplateBody</code> is used.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_estimate_template_cost_:_TemplateURL">TemplateURL</code></td>
<td><p>Location of file containing the template body. The URL must point
to a template that's located in an Amazon S3 bucket or a Systems Manager
document. For more information, go to <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template
Anatomy</a> in the CloudFormation User Guide.</p>
<p>Conditional: You must pass <code>TemplateURL</code> or
<code>TemplateBody</code>. If both are passed, only
<code>TemplateBody</code> is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_estimate_template_cost_:_Parameters">Parameters</code></td>
<td><p>A list of <code>Parameter</code> structures that specify input
parameters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Url = "string"
    )

### Request syntax

    svc$estimate_template_cost(
      TemplateBody = "string",
      TemplateURL = "string",
      Parameters = list(
        list(
          ParameterKey = "string",
          ParameterValue = "string",
          UsePreviousValue = TRUE|FALSE,
          ResolvedValue = "string"
        )
      )
    )
