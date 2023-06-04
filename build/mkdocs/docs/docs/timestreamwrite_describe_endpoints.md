<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_describe_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of available endpoints to make Timestream API calls against

### Description

Returns a list of available endpoints to make Timestream API calls
against. This API operation is available through both the Write and
Query APIs.

Because the Timestream SDKs are designed to transparently work with the
service’s architecture, including the management and mapping of the
service endpoints, *we don't recommend that you use this API operation
unless*:

-   You are using [VPC endpoints (Amazon Web Services PrivateLink) with
    Timestream](https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints.html)

-   Your application uses a programming language that does not yet have
    SDK support

-   You require better control over the client-side implementation

For detailed information on how and when to use and implement
DescribeEndpoints, see [The Endpoint Discovery
Pattern](https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery).

### Usage

    timestreamwrite_describe_endpoints()

### Value

A list with the following syntax:

    list(
      Endpoints = list(
        list(
          Address = "string",
          CachePeriodInMinutes = 123
        )
      )
    )

### Request syntax

    svc$describe_endpoints()
