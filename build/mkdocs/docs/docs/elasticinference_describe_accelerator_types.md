<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticinference_describe_accelerator_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the accelerator types available in a given region, as well as their characteristics, such as memory and throughput

### Description

Describes the accelerator types available in a given region, as well as
their characteristics, such as memory and throughput.

February 15, 2023: Starting April 15, 2023, AWS will not onboard new
customers to Amazon Elastic Inference (EI), and will help current
customers migrate their workloads to options that offer better price and
performance. After April 15, 2023, new customers will not be able to
launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
ECS, or Amazon EC2. However, customers who have used Amazon EI at least
once during the past 30-day period are considered current customers and
will be able to continue using the service.

### Usage

    elasticinference_describe_accelerator_types()

### Value

A list with the following syntax:

    list(
      acceleratorTypes = list(
        list(
          acceleratorTypeName = "string",
          memoryInfo = list(
            sizeInMiB = 123
          ),
          throughputInfo = list(
            list(
              key = "string",
              value = 123
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_accelerator_types()
