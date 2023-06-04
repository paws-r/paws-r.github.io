<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_add_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an association between the source and the destination

### Description

Creates an *association* between the source and the destination. A
source can be associated with multiple destinations, and a destination
can be associated with multiple sources. An association is a lineage
tracking entity. For more information, see [Amazon SageMaker ML Lineage
Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).

### Usage

    sagemaker_add_association(SourceArn, DestinationArn, AssociationType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_add_association_:_SourceArn">SourceArn</code></td>
<td><p>[required] The ARN of the source.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_add_association_:_DestinationArn">DestinationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_add_association_:_AssociationType">AssociationType</code></td>
<td><p>The type of association. The following are suggested uses for
each type. Amazon SageMaker places no restrictions on their use.</p>
<ul>
<li><p>ContributedTo - The source contributed to the destination or had
a part in enabling the destination. For example, the training data
contributed to the training job.</p></li>
<li><p>AssociatedWith - The source is connected to the destination. For
example, an approval workflow is associated with a model
deployment.</p></li>
<li><p>DerivedFrom - The destination is a modification of the source.
For example, a digest output of a channel input for a processing job is
derived from the original inputs.</p></li>
<li><p>Produced - The source generated the destination. For example, a
training job produced a model artifact.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SourceArn = "string",
      DestinationArn = "string"
    )

### Request syntax

    svc$add_association(
      SourceArn = "string",
      DestinationArn = "string",
      AssociationType = "ContributedTo"|"AssociatedWith"|"DerivedFrom"|"Produced"
    )
