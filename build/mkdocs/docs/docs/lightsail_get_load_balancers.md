<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_load_balancers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about all load balancers in an account

### Description

Returns information about all load balancers in an account.

### Usage

    lightsail_get_load_balancers(pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_load_balancers_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial
<code>get_load_balancers</code> request. If your results are paginated,
the response will return a next page token that you can specify as the
page token in a subsequent request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      loadBalancers = list(
        list(
          name = "string",
          arn = "string",
          supportCode = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          location = list(
            availabilityZone = "string",
            regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
          ),
          resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          dnsName = "string",
          state = "active"|"provisioning"|"active_impaired"|"failed"|"unknown",
          protocol = "HTTP_HTTPS"|"HTTP",
          publicPorts = list(
            123
          ),
          healthCheckPath = "string",
          instancePort = 123,
          instanceHealthSummary = list(
            list(
              instanceName = "string",
              instanceHealth = "initial"|"healthy"|"unhealthy"|"unused"|"draining"|"unavailable",
              instanceHealthReason = "Lb.RegistrationInProgress"|"Lb.InitialHealthChecking"|"Lb.InternalError"|"Instance.ResponseCodeMismatch"|"Instance.Timeout"|"Instance.FailedHealthChecks"|"Instance.NotRegistered"|"Instance.NotInUse"|"Instance.DeregistrationInProgress"|"Instance.InvalidState"|"Instance.IpUnusable"
            )
          ),
          tlsCertificateSummaries = list(
            list(
              name = "string",
              isAttached = TRUE|FALSE
            )
          ),
          configurationOptions = list(
            "string"
          ),
          ipAddressType = "dualstack"|"ipv4",
          httpsRedirectionEnabled = TRUE|FALSE,
          tlsPolicyName = "string"
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_load_balancers(
      pageToken = "string"
    )
