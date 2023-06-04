<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticinference_describe_accelerator_offerings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the locations in which a given accelerator type or set of types is present in a given region

### Description

Describes the locations in which a given accelerator type or set of
types is present in a given region.

February 15, 2023: Starting April 15, 2023, AWS will not onboard new
customers to Amazon Elastic Inference (EI), and will help current
customers migrate their workloads to options that offer better price and
performance. After April 15, 2023, new customers will not be able to
launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
ECS, or Amazon EC2. However, customers who have used Amazon EI at least
once during the past 30-day period are considered current customers and
will be able to continue using the service.

### Usage

    elasticinference_describe_accelerator_offerings(locationType,
      acceleratorTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticinference_describe_accelerator_offerings_:_locationType">locationType</code></td>
<td><p>[required] The location type that you want to describe
accelerator type offerings for. It can assume the following values:
region: will return the accelerator type offering at the regional level.
availability-zone: will return the accelerator type offering at the
availability zone level. availability-zone-id: will return the
accelerator type offering at the availability zone level returning the
availability zone id.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticinference_describe_accelerator_offerings_:_acceleratorTypes">acceleratorTypes</code></td>
<td><p>The list of accelerator types to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      acceleratorTypeOfferings = list(
        list(
          acceleratorType = "string",
          locationType = "region"|"availability-zone"|"availability-zone-id",
          location = "string"
        )
      )
    )

### Request syntax

    svc$describe_accelerator_offerings(
      locationType = "region"|"availability-zone"|"availability-zone-id",
      acceleratorTypes = list(
        "string"
      )
    )
