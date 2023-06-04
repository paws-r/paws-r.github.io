<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_compliance_summary_by_resource_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the number of resources that are compliant and the number that are noncompliant

### Description

Returns the number of resources that are compliant and the number that
are noncompliant. You can specify one or more resource types to get
these numbers for each resource type. The maximum number returned is
100.

### Usage

    configservice_get_compliance_summary_by_resource_type(ResourceTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_compliance_summary_by_resource_type_:_ResourceTypes">ResourceTypes</code></td>
<td><p>Specify one or more resource types to get the number of resources
that are compliant and the number that are noncompliant for each
resource type.</p>
<p>For this request, you can specify an Amazon Web Services resource
type such as <code style="white-space: pre;">⁠AWS::EC2::Instance⁠</code>.
You can specify that the resource type is an Amazon Web Services account
by specifying <code
style="white-space: pre;">⁠AWS::::Account⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ComplianceSummariesByResourceType = list(
        list(
          ResourceType = "string",
          ComplianceSummary = list(
            CompliantResourceCount = list(
              CappedCount = 123,
              CapExceeded = TRUE|FALSE
            ),
            NonCompliantResourceCount = list(
              CappedCount = 123,
              CapExceeded = TRUE|FALSE
            ),
            ComplianceSummaryTimestamp = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_compliance_summary_by_resource_type(
      ResourceTypes = list(
        "string"
      )
    )
