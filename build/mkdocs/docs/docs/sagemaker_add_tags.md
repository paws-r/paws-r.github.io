<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_add_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or overwrites one or more tags for the specified SageMaker resource

### Description

Adds or overwrites one or more tags for the specified SageMaker
resource. You can add tags to notebook instances, training jobs,
hyperparameter tuning jobs, batch transform jobs, models, labeling jobs,
work teams, endpoint configurations, and endpoints.

Each tag consists of a key and an optional value. Tag keys must be
unique per resource. For more information about tags, see For more
information, see [Amazon Web Services Tagging
Strategies](https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf).

Tags that you add to a hyperparameter tuning job by calling this API are
also added to any training jobs that the hyperparameter tuning job
launches after you call this API, but not to training jobs that the
hyperparameter tuning job launched before you called this API. To make
sure that the tags associated with a hyperparameter tuning job are also
added to all training jobs that the hyperparameter tuning job launches,
add the tags when you first create the tuning job by specifying them in
the `Tags` parameter of `create_hyper_parameter_tuning_job`

Tags that you add to a SageMaker Studio Domain or User Profile by
calling this API are also added to any Apps that the Domain or User
Profile launches after you call this API, but not to Apps that the
Domain or User Profile launched before you called this API. To make sure
that the tags associated with a Domain or User Profile are also added to
all Apps that the Domain or User Profile launches, add the tags when you
first create the Domain or User Profile by specifying them in the `Tags`
parameter of `create_domain` or `create_user_profile`.

### Usage

    sagemaker_add_tags(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_add_tags_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to tag.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_add_tags_:_Tags">Tags</code></td>
<td><p>[required] An array of key-value pairs. You can use tags to
categorize your Amazon Web Services resources in different ways, for
example, by purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$add_tags(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
