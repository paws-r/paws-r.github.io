<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_load_balancer_tls_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of TLS security policies that you can apply to Lightsail load balancers

### Description

Returns a list of TLS security policies that you can apply to Lightsail
load balancers.

For more information about load balancer TLS security policies, see
Configuring TLS security policies on your Amazon Lightsail load
balancers in the *Amazon Lightsail Developer Guide*.

### Usage

    lightsail_get_load_balancer_tls_policies(pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_load_balancer_tls_policies_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial
<code>get_load_balancer_tls_policies</code> request. If your results are
paginated, the response will return a next page token that you can
specify as the page token in a subsequent request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tlsPolicies = list(
        list(
          name = "string",
          isDefault = TRUE|FALSE,
          description = "string",
          protocols = list(
            "string"
          ),
          ciphers = list(
            "string"
          )
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_load_balancer_tls_policies(
      pageToken = "string"
    )
