###  v0.6.2  (2021-03-10)
- fix test mode, use NoMethodError for Limiter.new
- test coverage

###  v0.6.1  (2021-03-09)
- simplify
- test_mode upgrade, fractional cost support for concurrency limiter

###  v0.6.0  (2021-03-07)
- enforce rate interval > 0, since otherwise what even is the expected behavior?
- switch to millisecond precision, to match redis pexpire
- support for capacity/cost to be floats
- simplify lock and add dynamic count
- Update README.md
- test matchers description
- upgrade rspec matchers

###  v0.5.0  (2021-03-05)
- comparison operator for limiters
- use fail matcher
- riddle
- fix rspec complaint about expect {...}.not_to raise
- test_mode upgrade
- remove unused code
- simplify tests
- test coverage
- RateLimiter supports cost type Float
- upgrade convenience method
- Update README.md
- simplify overloaded?
- re-expire concurrency keys
- Berater.reset
- set Unlimiter capacity to infinity
- update benchmark
- upgrade ConcurrencyLimiter to microsecond precision timeout
- push more logic into redis
- extract and expand conversion to microsecond logic
- simplify Berater instatiation by using implicit mode
- move capacity into base limiter
- dynamic capacity for concurrency limiter
- s/RateLimiter.count/RateLimiter.capacity/
- add cost param to ConcurrencyLimiter, add Limiter.overloaded?
- overloaded examples
- s/limiter/subject/
- refine out DSL...for now
- abstract out convenience method tests
- symbolize redis.script
- fix minify bug
- improve redis caching
- cache lua scripts
- remove lock timeout / expiration
- benchmark limiters
- test_mode compatibility
- refactor our yield of lock mess
- test coverage for concurrency timeout
- test coverage for millisecond precision
- dynamic ratelimit capacity and cost

###  v0.4.0  (2021-02-22)
- upgrade RateLimiter to leaky bucket algorithm with microsecond precision

###  v0.3.0  (2021-02-21)
- Update README.md
- testing mode
- s/BaseLimiter/Limiter/
- make rspec setup and matchers accessible.  clean up naming
- consolidate shared Limiter.limit tests, remove redis call from Unlimiter, expose Lock.timeout
- dsl
- store interval value in sym and sec
- to_s
- remove Gemfile.lock from git

###  v0.2.0  (2021-02-15)
- locks for all limiters
- clean up lock
- convenience method for limiting
- simplify!  remove all .limit options in favor of initializing with everything
- simplify concurrency script
- reduce method accessibility
- remove .limit class method to simplify
- remove Berater.mode in favor of explicit instantiation

###  v0.1.4  (2021-02-08)
- handle capacity 0 properly
- cleanup tests
- refine concurrency lock

###  v0.1.3  (2021-02-05)
- bug fix.  sleep no longer needed

###  v0.1.2  (2021-02-04)
- redis determinism
- EditorConfig ftw
- move Overloaded exception into base class to clean up naming etc

###  v0.1.1  (2021-02-04)
- add lock contention stat and yield to limited block

###  v0.1.0  (2021-02-03)
- add Inhibitor / :inhibited mode for testing purposes
- change limiter loading to make more flexible
- s/Berater.limiter/Berater.new/
- upgrade concurrency lock
- test timeouts
- s/token/lock/
- can now provide "key" while calling .limit, better support for passing in options anywhere and everywhere, default key and redis values, Limiter.limit class method, more test coverage
- rename spec file so it runs properly
- improve rspec matchers to use blocks and hence release tokens
- rspec matcher handles blocks and limiters
- rspec matchers ftw
- s/LimitExceeded/Overloaded/
- test with multiple keys
- namespace all keys and add expunge helper
- consolidate Berater module testing
- fix ttl 0 to indicate no expiration.  add token/release mechanism
- ConcurrencyLimiter and support for yielding
- friendly exceptions
- major overhaul.  add support for multiple limiter types, lots of test coverage
- expand configure method, add tests
- rename repo
- simplecov and codecov
- ci (#1)

