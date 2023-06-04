<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticinference_describe_accelerators</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes information over a provided set of accelerators belonging to an account

### Description

Describes information over a provided set of accelerators belonging to
an account.

February 15, 2023: Starting April 15, 2023, AWS will not onboard new
customers to Amazon Elastic Inference (EI), and will help current
customers migrate their workloads to options that offer better price and
performance. After April 15, 2023, new customers will not be able to
launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
ECS, or Amazon EC2. However, customers who have used Amazon EI at least
once during the past 30-day period are considered current customers and
will be able to continue using the service.

### Usage

    elasticinference_describe_accelerators(acceleratorIds, filters,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticinference_describe_accelerators_:_acceleratorIds">acceleratorIds</code></td>
<td><p>The IDs of the accelerators to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticinference_describe_accelerators_:_filters">filters</code></td>
<td><p>One or more filters. Filter names and values are case-sensitive.
Valid filter names are: accelerator-types: can provide a list of
accelerator type names to filter for. instance-id: can provide a list of
EC2 instance ids to filter for.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticinference_describe_accelerators_:_maxResults">maxResults</code></td>
<td><p>The total number of items to return in the command's output. If
the total number of items available is more than the value specified, a
NextToken is provided in the command's output. To resume pagination,
provide the NextToken value in the starting-token argument of a
subsequent command. Do not use the NextToken response element directly
outside of the AWS CLI.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticinference_describe_accelerators_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      acceleratorSet = list(
        list(
          acceleratorHealth = list(
            status = "string"
          ),
          acceleratorType = "string",
          acceleratorId = "string",
          availabilityZone = "string",
          attachedResource = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_accelerators(
      acceleratorIds = list(
        "string"
      ),
      filters = list(
        list(
          name = "string",
          values = list(
            "string"
          )
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
