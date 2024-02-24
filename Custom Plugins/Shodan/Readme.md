## Shodan Custom Plugin

The following is Custom plugin for Shodan , here you will be able to achieve the following :

ShodanGetServicesOnIP
- Returns all services that have been found on the given host IP.
ShodanGetHostResultCount
- This method behaves identical to "/shodan/host/search" with the only difference that this method does not return any host results, it only returns the total number of results that matched the query and any facet information that was requested. As a result this method does not consume query credits.
ShodanGetSearchSummary
- Search Shodan using the same query syntax as the website and use facets to get summary information for different properties.
ShodanListFacets
- This method returns a list of search filters that can be used in the search query.
ShodanListSearchFilters
- This method returns a list of search filters that can be used in the search query.
ShodanSearchTokens
- This method lets you determine which filters are being used by the query string and what parameters were provided to the filters.