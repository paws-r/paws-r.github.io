<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elb_create_app_cookie_stickiness_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a stickiness policy with sticky session lifetimes that follow that of an application-generated cookie

### Description

Generates a stickiness policy with sticky session lifetimes that follow
that of an application-generated cookie. This policy can be associated
only with HTTP/HTTPS listeners.

This policy is similar to the policy created by
`create_lb_cookie_stickiness_policy`, except that the lifetime of the
special Elastic Load Balancing cookie, `AWSELB`, follows the lifetime of
the application-generated cookie specified in the policy configuration.
The load balancer only inserts a new stickiness cookie when the
application response includes a new application cookie.

If the application cookie is explicitly removed or expires, the session
stops being sticky until a new application cookie is issued.

For more information, see [Application-Controlled Session
Stickiness](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application)
in the *Classic Load Balancers Guide*.

### Usage

    elb_create_app_cookie_stickiness_policy(LoadBalancerName, PolicyName,
      CookieName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elb_create_app_cookie_stickiness_policy_:_LoadBalancerName">LoadBalancerName</code></td>
<td><p>[required] The name of the load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="elb_create_app_cookie_stickiness_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the policy being created. Policy names
must consist of alphanumeric characters and dashes (-). This name must
be unique within the set of policies for this load balancer.</p></td>
</tr>
<tr class="odd">
<td><code
id="elb_create_app_cookie_stickiness_policy_:_CookieName">CookieName</code></td>
<td><p>[required] The name of the application cookie used for
stickiness.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_app_cookie_stickiness_policy(
      LoadBalancerName = "string",
      PolicyName = "string",
      CookieName = "string"
    )

### Examples

    ## Not run: 
    # This example generates a stickiness policy that follows the sticky
    # session lifetimes of the application-generated cookie.
    svc$create_app_cookie_stickiness_policy(
      CookieName = "my-app-cookie",
      LoadBalancerName = "my-load-balancer",
      PolicyName = "my-app-cookie-policy"
    )

    ## End(Not run)
