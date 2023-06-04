<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticinference_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from an Elastic Inference Accelerator

### Description

Removes the specified tags from an Elastic Inference Accelerator.

February 15, 2023: Starting April 15, 2023, AWS will not onboard new
customers to Amazon Elastic Inference (EI), and will help current
customers migrate their workloads to options that offer better price and
performance. After April 15, 2023, new customers will not be able to
launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
ECS, or Amazon EC2. However, customers who have used Amazon EI at least
once during the past 30-day period are considered current customers and
will be able to continue using the service.

### Usage

    elasticinference_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticinference_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the Elastic Inference Accelerator to
untag.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticinference_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The list of tags to remove from the Elastic Inference
Accelerator.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
