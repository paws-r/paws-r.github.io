<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_cost_estimate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the cost estimate for a specified resource

### Description

Retrieves information about the cost estimate for a specified resource.
A cost estimate will not generate for a resource that has been deleted.

### Usage

    lightsail_get_cost_estimate(resourceName, startTime, endTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_cost_estimate_:_resourceName">resourceName</code></td>
<td><p>[required] The resource name.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_cost_estimate_:_startTime">startTime</code></td>
<td><p>[required] The cost estimate start time.</p>
<p>Constraints:</p>
<ul>
<li><p>Specified in Coordinated Universal Time (UTC).</p></li>
<li><p>Specified in the Unix time format.</p>
<p>For example, if you wish to use a start time of October 1, 2018, at 8
PM UTC, specify <code>1538424000</code> as the start time.</p></li>
</ul>
<p>You can convert a human-friendly time to Unix time format using a
converter like <a href="https://www.epochconverter.com/">Epoch
converter</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="lightsail_get_cost_estimate_:_endTime">endTime</code></td>
<td><p>[required] The cost estimate end time.</p>
<p>Constraints:</p>
<ul>
<li><p>Specified in Coordinated Universal Time (UTC).</p></li>
<li><p>Specified in the Unix time format.</p>
<p>For example, if you wish to use an end time of October 1, 2018, at 9
PM UTC, specify <code>1538427600</code> as the end time.</p></li>
</ul>
<p>You can convert a human-friendly time to Unix time format using a
converter like <a href="https://www.epochconverter.com/">Epoch
converter</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourcesBudgetEstimate = list(
        list(
          resourceName = "string",
          resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
          costEstimates = list(
            list(
              usageType = "string",
              resultsByTime = list(
                list(
                  usageCost = 123.0,
                  pricingUnit = "GB"|"Hrs"|"GB-Mo"|"Bundles"|"Queries",
                  unit = 123.0,
                  currency = "USD",
                  timePeriod = list(
                    start = as.POSIXct(
                      "2015-01-01"
                    ),
                    end = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                )
              )
            )
          ),
          startTime = as.POSIXct(
            "2015-01-01"
          ),
          endTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$get_cost_estimate(
      resourceName = "string",
      startTime = as.POSIXct(
        "2015-01-01"
      ),
      endTime = as.POSIXct(
        "2015-01-01"
      )
    )
