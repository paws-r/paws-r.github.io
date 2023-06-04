<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_create_recommendation_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new recommendation template for the Resilience Hub application

### Description

Creates a new recommendation template for the Resilience Hub
application.

### Usage

    resiliencehub_create_recommendation_template(assessmentArn, bucketName,
      clientToken, format, name, recommendationIds, recommendationTypes, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_create_recommendation_template_:_assessmentArn">assessmentArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the assessment. The
format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_create_recommendation_template_:_bucketName">bucketName</code></td>
<td><p>The name of the Amazon S3 bucket that will contain the
recommendation template.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_create_recommendation_template_:_clientToken">clientToken</code></td>
<td><p>Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_create_recommendation_template_:_format">format</code></td>
<td><p>The format for the recommendation template.</p>
<p><strong>CfnJson</strong></p>
<p>The template is CloudFormation JSON.</p>
<p><strong>CfnYaml</strong></p>
<p>The template is CloudFormation YAML.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_create_recommendation_template_:_name">name</code></td>
<td><p>[required] The name for the recommendation template.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_create_recommendation_template_:_recommendationIds">recommendationIds</code></td>
<td><p>Identifiers for the recommendations used to create a
recommendation template.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_create_recommendation_template_:_recommendationTypes">recommendationTypes</code></td>
<td><p>An array of strings that specify the recommendation template type
or types.</p>
<p><strong>Alarm</strong></p>
<p>The template is an AlarmRecommendation template.</p>
<p><strong>Sop</strong></p>
<p>The template is a SopRecommendation template.</p>
<p><strong>Test</strong></p>
<p>The template is a TestRecommendation template.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_create_recommendation_template_:_tags">tags</code></td>
<td><p>The tags assigned to the resource. A tag is a label that you
assign to an Amazon Web Services resource. Each tag consists of a
key/value pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommendationTemplate = list(
        appArn = "string",
        assessmentArn = "string",
        endTime = as.POSIXct(
          "2015-01-01"
        ),
        format = "CfnYaml"|"CfnJson",
        message = "string",
        name = "string",
        needsReplacements = TRUE|FALSE,
        recommendationIds = list(
          "string"
        ),
        recommendationTemplateArn = "string",
        recommendationTypes = list(
          "Alarm"|"Sop"|"Test"
        ),
        startTime = as.POSIXct(
          "2015-01-01"
        ),
        status = "Pending"|"InProgress"|"Failed"|"Success",
        tags = list(
          "string"
        ),
        templatesLocation = list(
          bucket = "string",
          prefix = "string"
        )
      )
    )

### Request syntax

    svc$create_recommendation_template(
      assessmentArn = "string",
      bucketName = "string",
      clientToken = "string",
      format = "CfnYaml"|"CfnJson",
      name = "string",
      recommendationIds = list(
        "string"
      ),
      recommendationTypes = list(
        "Alarm"|"Sop"|"Test"
      ),
      tags = list(
        "string"
      )
    )
