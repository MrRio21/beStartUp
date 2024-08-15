<!-- TOP MENU BAR -->
<div class="smart-header header">
    <div class="container-fluid">
        <div class="d-flex">
            <div class="go-back ml-4">
                <a class="fs-12 text-muted" href="{{ route('user.dashboard') }}"><i class="fa-sharp fa-solid fa-chevrons-left fs-11 mr-2"></i>Back</a>
            </div>
            <a class="header-brand w-100 text-center" href="{{ url('/') }}">
                <svg width="150" height="31" viewBox="0 0 150 31" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <rect width="150" height="31" fill="url(#pattern0)"/>
                    <defs>
                        <pattern id="pattern0" patternContentUnits="objectBoundingBox" width="1" height="1">
                            <use xlink:href="#image0_505_7715" transform="matrix(0.00094162 0 0 0.00455622 0 -0.0125752)"/>
                        </pattern>
                        <image id="image0_505_7715" width="1062" height="225" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABCYAAADhCAYAAAAUCbQgAAAAAXNSR0IB2cksfwAAAAlwSFlzAAALEwAACxMBAJqcGAAAOLdJREFUeJzt3XmcXFWZ/3GBH27jPm44jjjOjDP6ezkzOur4c9yAEBIgYTHIIpssBQHCEpB9SQhpAdkXkX3fEZCwBbsliKyCICrKoiEsQlVXd7YWUIH6PdW3K911a7t16577nOXzfr2+/yAk53nOuadzH7srb3oTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEv0TR75pGRzyaGSkyTnSa6RLJQsCii3pPhvBiQLxvp1keQsyYmSoyUFydclH9LeYwAAAAAArCAvyR+WbC05XfKQpEJWZcjgr71M8oDkYslsyWe0zwIAAAAAALmQl+DPSU6RLLbg5d/mDOf8+z0vuUDyLcl7tM8JAAAAAACZkRfdv5fsL3nMghd+V2LyOyaS5B7JPpL3ap8fAAAAAABSkZfatSVnSv5swYu+a8n7OyZa5S+S6yQbS9bQPlMAAAAAAHQkL7Af74s+gFH7pdrlaH/HRLOUJcdLPqp9xgAAAAAAaCAvrG+WHCV51YKXaNdjy3dMNMtf+6K/LeWftM8cAAAAAACj5CX1a5InLHhp9iU2DyZqeU1yheTT2ucPAAAAABAoeSldQzJP8roFL8o+xcYf5WiXayX/qH0eAQAAAAABkRfRtST3WfBS7GNc+I6JeKofcnqI5M3aZxMAAAAA4Dl5+fzfPvf+X32X4uJgopanJetqn1EAAAAAgKfkpXOTPj7g0nR8GPpUf7zjvdrnFQAAAADgEXnRnC15w4KXXt/j8ndMTMyfJF/SPrcAAAAAAA/IC+a+FrzohhJfBhPVVP/2jsMlq2mfYQAAAACAo+SlcrM+vlMiz/g0mKjlp5L3a59lAAAAAIBj5GXyS5K/WPBiG1J8+IyJZnlJ8jntMw0AAAAAcIS8RH7M45dkm+Pjd0zUMiJZR/tsAwAAAAAsJy+Pa0oetuBFNsT4PJio5q+SzbXPOAB0ssaab65Uo70OAH7gTgGALsmL49kWvMCGGt8HE9VUP7NkV+1zDgDt1F4ieJkAkAXuFADogrwwbm3Bi2vICenHZw7QPu8A0Er8JYKXCQC94E4BgITkRfGdkkELXlhDTgjfMTEx22qfewBoptVLBC8TANLgTgGAhOQl8UQLXlRDT2iDidckU7TPPgDEdXqJ4GUCQDe4UwAgAXk5/MTYS6L2i2o42aA+86eM/vPQBhPVvCL5rPYzAAATJX2J4IUCQBLcKQCQgLwYLrDgBdW9NBku1GXqeI7ZMJaNYtl49NcMcTBRTVnyz9rPAQDUpHmJ4GUCQCvcKQDQgbwQfs6CF9NmWSn5tWSR0WxQn/lTYplan2M2nJCNYtk4yrxpsUwfz9GbxLLpeGQ9t6So4W7J45IXJCMW7Fva/EHyTu3nAQCqenmJ4GUCQBx3CgB0IC+DP7bgpbT67fy3S/aXfEHyAe2+uEz690nJZMmukuMlD1qwx0nyI+3eAUBVFi8RvEwAqOFOAYA25EXws8ovor+TbKbdhxD0RX/ryjTJGX3Rd6NoDyFaZS/tXgFAli8RvEwA4E4BgDbkJfCizF8sk33uwjOSHY7ZcGR17R6ESPbpbZIdJfdZMIiI56+S/9TuEYCw8RIBIEvcKQDQgrz8vbWv1WcSdPGhjg0f7NjkQx2rmTdtVa6SvE27fkRkvz8vudmCgcTELJa8R7s3AMLFSwSALHGnAEAL86eObJ/4b41oHC5EmV6fozeJZdMJ2Wzkb5L9tOtGc33Rj/XY8HkjtVyh3RMA4eIlAkCWuFMAoIV500b6ux4uRAOGytxaNq9lZZRvRpkzI5YtRrOxds3orG/yyNclT1owmKjmf7X7ASBMvEQAyBJ3CgA0cfRmI38neaN+wJBouDCeb0U5qpotY9kqypG1bL1yrnbN6E7f5JG9JX9WHkz8RrsPAMLESwSALHGnAEATc7ZYuUnDcCE+YGgcLkTZJpZvRzmilm0nZLvR/OTw7Vaupl0zutc3eeT/Sp5RHk7M1u4DgPDwEgEgS9wpANDEkdusPDXxcGFswHB4LdvHssNYdoxyWC3fGc2w5H3a9SK9vskj75HcrjiYWCF5v3YfAISFlwgAWeJOAYAmDt9u5a+7GC6MZ6coh1azcyy71OeQXUezv3atyEbf5JHjFIcTF2vXDyAsvEQAyBJ3CgDEHLbTynetGi7EBwzNhwuVQwqx7Bbl4Fp2n5CZq7JEu1Zkq2/yyPaS1xQGE29IPqldP4Bw8BIBIEvcKQAQc0hh5Rc7DhfqBwyVg/aIZc8VdTlwr7HMmpC9V+ykXSuy1zd5ZH3JiMJw4kLt2gGEg5cIAFniTgGAmIP2WLlj4uFCNGCoy3f3mZB963PAfqvyF8k7tWuFGX2TRyYpfOfE3yQf164dQBh4iQCQJe4UAIg5cO8Vx9YNF/ZpOVyIMnss+9dn/wMm5Lv1mX3gilu164RZfZNHdlD4romztOsGEAZeIgBkiTsFAGIO2H/FdU2HCwc0DBfqc1AsB0fZ75BYDh3Nztp1wry+ySNHKwwn1tKuG4D/eIkAkCXuFACImX3QitsSDhdWZd/DJuTwWI6Isk8tR47mv7TrRD76Jo/cnPNg4jjtmgH4j5cIAFniTgGAmH0PWzHQMGBoPlyo7HNUffaeMyFzYzk6yqwoH9GuE/nomzzyDsnTOQ4mipI1tOsG4DdeIgBkiTsFAGL2nrPi7pYDhvrhQmXWvFqWRzkmyl61zB9L34R8bzSradeJ/PRNHvmU5OUchxNTtGsG4DdeIgBkiTsFAGJmHbP8gY7DhbEBw561HBvLcVH2qOX4ugxr14j89U0eOSLHwcSV2vUC8BsvEQCyxJ0CADF7Hrv8ZwmGC5U9vj+WE6LMrObEWE6KsnstJ49mmXaNyF/f5JG3SJbkNJh4pfojJNo1A/AXLxEAssSdAgAxM09YfmuC4cJ4TqnPbqeO5bQJOT1KoZYzlq+pXSfy1zd5ZPMcv2uCv/kFgDG8RADIEncKAMTsfsryq5sOF05rGC7U58z67PqDWM4azy4/XP7P2nVCR9/kkZ/nNJgY0K4VgL94iQCQJe4UAIgpnLn8vCTDhbEBQ5SzJ+Sc+ux8biznLavmq9p1Qkff5JFJOQ0m/iZ5q3a9APzESwSALHGnAEDMLmcvPzE+YGgxXFiVnc6P5QLJhfX5zkV1OUy7TuiZN23kYUklh6yvXSsAP/ESASBL3CkAELPT+ctmrhouXNB2uFD5zsX12fGSWC6dkMui7HD5aO7XrhN65sxYOVVSySF92rW6jD8QoZ3QzwIvEfZiH5CUTWchtDsltHrToEfm0ENH7HjJsnVaDhcaBwxRrqjP9lfGclUsVy97Y7url31Au1boOGLblatJnpNUDOcB7VpdYOILHxe6f3w8B3mffZ6tbNFfJJXXnmvfAS6dedfWq4Ee9can5yVYO1yx7CMJhwuj2a6WayTX1mfb62L5UV12064Veg7dZeV8ScVwXpfw14ZOoP2HHC5yt/i+/9pn36de5kG7v6H121Wae6x9Jl06466tVwM96o728xJav3Oz3bXLliccLlS2vT7Kt2u5YUJujLJNLT8ey02jeUG7Tug5aM8Vn5RUcshG2rVq076UucDdE8r+a5931/uXB+2ehtx7l9iyr9rnULt+7V6ZXK8GetSZ9jMScu9z8+0blt3ecsBQP1wYz4IoW9dycy1Lo9yytLJVLbeuyoHatULP/geseFhSMZxDtevUon0Bc3m7R3vf89577Vpd7p1J2n1kD9xh235qnz/t+rV7ZXK9GuhRa9rPBnuQo60XLPtuq+FCiwFDZavbxnJ7lC1rWRjLHVG+Vc1Pli6TvE+7XujY97AVx0sqhnOxdp15075wucDdo73HWvuuXaOLPTNJu3/shxts3kPtM6ddv3avTK5XAz2qp/08sBdKtrp96RcTDxeiAcN4+uuzxcBYfhrLnVFm3Ln0Xsma2jUjf7PmrdhQUjGcIP4GGO3LlQvcXdr7qrnn2vW51i8TtHvGvrjDhb3TPmva9Wv3yuR6NdCjiPZz4Pqz5rxv/WTp6t/qX7qyi+FClEWx3DWeb/4slrvrcrl2zcjfHscvf4fkdUnFYJZr12ma9mXK5e0u7b3U3nPtulzpkyna/WJ/3ODSnmmfMe36tXtlcr0aQu+R9vn36Xlz3oxFSy+PDxcaBgz1w4XK5j8fyz2x3Dueze6L5f5VmatdM/K32+nLH5ZUDMfLv5pW+wLVjnb/Xaa9d7bst3ZNLvTIBO0+aUe7/y5xba+016tdv3avTK5XQ6g90j732tHuv5U2v2fplFbDhQ4DhsqmD8Ty4Fh+UZ9NHpqQh4erOV+yunbtyM8u5yy/VFIxnK9o15kl7QvTpmjvhau0982W/daux/b+ZE27PzZFey9sp70/afdJe73a9Wv3yuR6NYTYI+0zb1Nc2IvcFrPZ/UvX2PSBpcWuhgvjA4bRTP9lLI/E8miUab+qy63THht+a26FQtWOlyw7TFIxnO2068yK9iVpa7T3xRXa+2TbXmvXYnNvsqbdG1ujvS820t6TXvZHe73a9Wv3yuR6NYTUI+2zbmtc2IvcFrbJw8MnNAwYkg0XKtMeq8/Gv56Q38Ty2ygb1fL48B8kW230u+HVcisWKra7etkWkorh7KddZxa0L0fbo70/LtDeI9v2WrsOW/uSNe2+2B7t/bGJ9l70ujfa69WuX7tXJterIZQeaZ9zF+LCXhhf3LTHhtduOVyIDxgahwtRflefDX8/IU/E8mSUqbU8NfyIZJrxQqFmm5uW/aekYjjztOvshfZl6FK098pm2ntj415r12BjT7Kk3Q+Xor1X2rT7n9W+aK9Xu37tXplcrwbfe6R9vl2L1n70+u9maqPHhy9sO1yIDxgahwv1eTrKlFr+MJY/TsjiKBvU8szwK5KbJbMkn99gyfDfGy8cudhy4dK1Gv462uxzlnadaWlfgi5Ge89spL0ntu6zdg029iQr2r1wMdp7pkW771nuifZ6tevX7pXJ9WrwuUfaZ9vV2LIfrf47U+tbZeqTw/+Sarjwx4bhQn2WRJlcy7OxPCd5Psr6tbxQy1A1K9f/09BjkkWTanlxQl6qz3rFsZRiGYyybi3lCRmqzzrDsSwdy7Io36hm+WgelSxtFvn3nqj9+y0z9uuu2ynDUdZrl6H6TGqWcl3uXL88dKvkOsmlkrMlp0j61h8c2lcyVfKJrM7XjLuWrhb/m18M5Jqs1psn7cvP9Wjvny2098HmPdZev239yIp2H1yP9v7lSbvXWe+F9nq169fulcn1avC1R9rn2vXksSdJ9qndf2vUlMXDlzQdMCQZLsQHDPXDhcr6f4oyqZYXY3lpPOsVx1KKZTDKurWUYxkazzrDsSwdy7Io36hleevU/t2OkV933U4ZjrJeuwzVZ1KrlMezfqsMNs/kWkqts0EtxVX5teQ6yRzJN9Ker00fWLqs4W9yyTYDGT4OudC+9HyJ9j7aQHsPbN5j7bXb1IusaPfAl2jvYx60e2xiH7TXq12/dq9MrleDjz3SPtM+xdSedLNXzf7drNbV0uTnhtea/Pzwqy2/e6GL4ULLAUMXw4WGAYPh4ULHAUOS4cJw98OFlgOGbIcLbTPlpc6Z+uKqrJDcKJkp+VjS8zXtV8NPN3x4arZ51OTzkSXtS87HaO+pJu3e276/2mu3qRe90q7dx2jup0nafTW5B9rr1a5fu1cm16vBtx5pn2cfk/W+JPnnE/+3VnubxbramvTS0FFJv3sh1XBhuPvhQuIBg6HhQssBQ5LhQosBQ5LhwmSzw4X2+dNQZcNOeSHKRi8M/V5yjOSf2p2tDX8//LuGzy3JNr81/oBkQPty8znae6tFu++276/2um3pQxa0a/c1mntqgnY/Tfdfe73a9Wv3yuR6NfjUI+2z7HOy3Jsk/3zi/5b038/cuuWht0iWJBoumPjuhSTDhSx/NCKv4ULCAUPWw4WOA4bx4UL7PD+ejVvludHcI9lV8s742drgmeHnGz6DJNvcb/wB6ZH2pRZCtPc4b9r9dmFvtddtSx96oV1zCNHYVxO0+5hH77XXq12/dq9MrleDLz3SPschJKv9MfHPjfnG8qFp1vxohL2fu9DTcCHxgMHQcKHlgOG5+kxrlWcbMz2eJUOXST5fO1eTXhpaHv9xn4zzk1wekJS0L7OQor3XedLutQv7qr1uW/rQC+2aQ4nG3mZNu4d59F17vdr1a/fK5Ho1+NAj7TMcUrLYo273LsmvY9Q6y4ZO4nMXchwuJB0w5D9caJpN4nmmdTZ9ptwvWSfxUCt9rs/tAemS9iWWxyVnW7LcP5vZ0E+f99WHGnql/Sxn1Vft9fl6PibS7p0LffW5tmZCqzcN13uk/Wyb6IX2mk3X1E2tSX8do9YbHvo/knv50YjUn7vQ23Dh+fTDhYYBQzbDhSiL22ezWv7YmOnPlkf3r+OP6aTPRbk9IF3SvsCyuNCo0z629dC29WTBhxp6of0M59E77ZpcPyM12j1zpX/U63e9abjcI+1nPc+6tWvrtc5W/338n3f6fdSexUnloQ9Liql+NCLn4YL2j0YkGS60HDAkGS60GDB0M1xYNWDoYbgQz+Z/SJZvPj2e6u8x5cXW56eHnJHrA5KQ9uWlcnkEXHeebO2djWuyqZa8a0hL+9n1ac9dqLsX2r1yqV+h1R5avWm42iPtZ17zPGjXnKbuVv990n/W7tfIzeTS0OclLzs3XPiTtZ+70HnAkGS40GHAYHq40DJPRZnRKU9G66zuZ9KzkSDzc39AOnDt0jJBuwe29MEEW3vm0366vv60tJ9ZG/oUev1J0afuhNaD0OpNw9Ue8dy7df+1+m+T/rN2/zxXGxSHNpa87vTnLrj8oxEJhgtJBwxZDxeq2aJdnqjPt2Kp/jubPpNggJQsBbWHpAlXLqq80I9s2d4v29enWUee60+DZ7Ue/WiN3nQvtF6EVm8aLvaI576eK3dhs/+21a/V7t9T34upLw7NNPqjESmGC9o/GpHF5y4YGy4kHTAkGS482X64sCq/r8+WzfK75qn+99UBRcMedZevqj4kE7hwOWmhN9lwoU8urFGjhjzX3y2t59P2vlTRl0b0o3uh9SS0etNwrUfcha3Z3ptufh3r92LDF4ZmbvTC0Btefu6Cyz8akWK40HLAkGS40GLAsFU8jzfP1hPz2/pU69lscep8SPsZqbH5UrIFPeqNKz1yYY0+r79bPJftafTH1h7Rh3RC60to9abhUo947juzvUfd/BrW78nGzw9tInnV989dcPVHI1SGC00GDBOzTS2/aZ1v1/Lr6Ncb7VnS7wyJslL72aix/UKyCX1Kz5X+uLJOX9ffDe6u5ELvU+j19yK0/oRWbxou9YhnPzmbe+XVnkx7dujLkqGgPnfh6ZyHC0+kHy40DBhyGi7EBwwt81iUbduk+r+P/ojH7xPnfu3nosbWS8hWNl/cNnOlN66s09f1d4PnsDsh312h1p2F0HoUWr1puNIjnvvu5dmzbvvm1Z5s8szQWpL7bPkrKX383IUk373QzXBh65yHC6P5VZTt2uXR+mw/IaPfQdGhprFcpP1MVNl6+biA3nXHlb64sk5f158Uz186efbNlt6FVm/WQutTaPWm4UKPeO7Ts7133uzJZovLa0jmb/bH8hvWfe7CU/587kKvPxrRacBgerhQl0fGs0Or/LI+1V+v4xofK++n/TzYfvG4gP4l51JfXFlnHmu38fxxd/UulP5xVnoXWq9CqzcNF3rEc98b7s4cbf6H8jckf7T6cxcc/NGIboYLHQcMSYYLv+p+uNBywPDL5tkxnocb8514Hor+ectBRpT/0n4OuHCyQR+ToSf5CKHPPHPZCKGPIdRoWmj9Cq3eNGzvEc99NuhjjmY8VX6LZK7kL3kNF7R/NCLvz11IM1xoOWBIMlxoMWBIMlxoGDA81D471fKL9mnx3y/VPv9cNtmil53Rk3z43mfurmz53EvOSjZC61lo9aZhe4947rPDPZqzLZ4o/6vkZleGC5l+90JOn7vQ649GpB4udBgwJBku7FzLg8myywOJcq32ueeSyR49bY+e5MP3HvOcZc/XnvpaV95C61to9aZhc4947s2gpznb8vflL0nuc/VzFzL57oUUw4W8fjSi1+9c6GbAkGi4cH+UXTvlvnKlcG+5sts9dZmpeda5tM2hr63Rk3z43GPuLjN87KuPNWkJrXeh1ZuGzT3iuTeDO1XJ1o+XN5bcIHk50x+N4HMXcv3uhYTfuZBswHDf2IChXe6tz26x7P7zcmWPn63KJzXPOBeLOVzcrdGTfPjcX54tc3y7u3yqRVto/Qut3jRs7ZFv95ht6K2ybX5T3lhyqaSc9Y9GhPq5C0Z+NCKr4cJ97YcLq1L/3Q+V3Zvl543Z865yZdad5Wc1zzSXinn0uDn6kg+fe8v5McunZ9SXOmwQWg9DqzcNW3vk0x1mK3psgW0fK68m+R/JPMmjtnzuQsOAIafPXdhJa7hwf/fDhZYDhiTDhRYDhpnx3N08e0zM2HdLzLpz8BrNs8yFkg963Bznzzxf+8rZyYcPPeasZCu0HoZWbxq29ojn3jzuVwtt/2j5bZJPSTaQ7CI5cvtHyidLzpdcK1m4wyPlRQ35ZfPsGM/DjflOPA+1zk61/KIhj0qW1rJzLQ+O5gnJolbZ5YEEuT/Krp1yX5RCu9xbn93uLd8leUyyRLKs2YChm+FCw4AhyXDh7rofx2jInrXc1T573aX3V4VymeSDi7s5031xuTdZ8bWnnJl8+PB8ur5+24TWx9DqTcPGHvlwd7mCPgNN7P7z8sdm/rz8Vcl2kiMkC2feXf5zTsOFKIs6Z9adDVkseWfe/eIiyRf9bmT6Dw6u9ycLPvaTs5Ivl/vt8tptFVovQ6s3DRt7xLOfL/oNJLTHz8pf2fNn5TmS5wwOF5pm758myMBoFuTdFy6R/NHvRibPoU99SsvHPnJG8udqz11dt81C62Vo9aZhY4947vPFXQt0aa9F5dUkkyXXSf6adMDQxXChsk9DBuvTH2Xf5pmdZz+4QPLHxd3IZE9861UaPvaPc5E/V59HF9dsu9D6GVq9adjWI1fvK9fRcyClvX9aXktyuuSV+IChx+FClJ/UZ7947mjM7DsG/yb5Qh71c2nroe/1TJ5FX3vWDR/7xnnQ4VrfuTvMCK2fodWbhm094rnXwZ0L9Gj/Wwc/cvz3S68kGTAkGS6MDRjGs7B99q/l9lVZInmb6bq5OPTQ+0Ymv5j53rtOfOsXZ0CPa713bb2uCK2nodWbhm094tnXQ++BHlw7vfSr/n8vVhZ8uVj53kml5sOFDgOGJsOFpjmgmtsSZZ7purk49ND7RqZ6Elofm/GtR+y7Lpf679JaXRJaT0OrNw3bemTbekLCvQukdO0mpdurQ4mJuXKzUuXwKzoMFxIOGL57a+cceEvLfMJk7Vwcuuh/I1M9CbGXE/nWG/Zbl0v9d2mtLgmtp6HVm4ZNPeK510f/gS5duU3povhQopbbPlusHHtyKfFwocOAYTw3RzmoXRZEOXjBYL/J+rk0dPGFszlTfQm5r771w7d6XOPSM+bKOl0TWl9DqzcNm3rk0h3lK/oPdOGE8wePOOmHg5UfTS81HUyM5lPFyg/3LUXDhG6HC/UDhta5qT6HNGaaifq5tPWxB82Z6kvI/fWpD+yrHVzYA86KOaH1NbR607CpRzatJVTcv0BCJ59dOlFSqeWyXdoMJyRXzChVDr2+p+FClB/X59BmubEhS0z0wNSFQfRj4rzkTbuHvvXZp/rZTzu4sAecFXNC62to9aZhU49sWkvI2AegjdN+UPoHyT2SSjznH1Kq3PGZ1sOJGyYVK0demXq4MJrD4rmhMYfHc/1oZmbdC1N/YCP6yfqsaNHuo0/99qlun2pxmQvPk+3rc1lovQ2t3jRs6pFNawkZ+wC0cMbppc0lyyWVVjnn6FLlti+0Hk7c/KViZf55nYcLDQOG69vniFp+1DLPZN0PE5cFsSdZnxct2n30pec+1etTLS5z4TmyfX0uC623odWbhi09cuFuCgX7AMScdUppbckCSSVJzp3ffjhxyxeLlaMvSTVcGM2R1VyXLEddW5cdsuyLqYub2JEsz4o27V760Huf6vSpFtfZvhe2r89lofU2tHrTsKVHtqwD7AWwyjknlt4umS95VVLpJhdUv3Pii62HEz/+erEy98pUw4WmmXNNojwx5+rB1bPqj4nLgtiTrM6JLbT76Xr/farRp1pcZ/te2L4+l4XW29DqTcOWHtmyDrAXwJvOP770Nsl+kpcklbS5aE6psvBzrYcT121YSjdguDrK3Ha5KsrRjflmVn0ycVkQe5LVObGJdk9d3gefavOpFtfZvhe2r89lofU2tHrTsKVHtqwD7AUCdlFf6T2SgyVlSSWLXHZwqXLHf7YeTlyyYyntgGE8V9ZnXrNcsSoPZ9UvE5cFsSdZnRMbaffWxb3wqS5f6vCB7efK5rW5zva9z1po9aZhS49sWQci7AWCcum80jckl0telVSyzlX7tv+rRM88qpRsuFA/YKgc0yqXN8/88Xw6i76ZuLiJPcnijNhMu7+u7YdPNflShw9sP1c2r811tu991kKrNw1bemTLOhBhP+C1K+aU3i3ZRHKS5ClJxXRu+Hbr4UT1rxg98bSuhwtRLmtMXzyXNuSEXnto4pIgdiWLZ80F2n12ZU98qseXOnyQtq957QdnxRyf7pQkQqs3DVt6ZMs6EGE/4LSrjih9UPJJyRckkyW7S46VXCn5paSikVvWb/1dEzeuV2w/YGgcLtTle7Vc0iYXRzn24sGiZI1eemzikiB2Javn0RXa/bZ9X6jFvjp8kEUvTe4HZ8Ucn+6UJEKrNw1bemTLOhBhPyzRXyj+h2QbyXzJAsmDkt9LXpT8WVLJKrftVaxce2iJGMx1B5Yqd/xX6+HEOQeXOg8XLlk1XGifi6Ic1zpTejmbJi4JYleyusdco913W/fGlzpM1KJVhw+y7GHW++HTmbdRaP0Nrd40bOmRLetAhP1Q0F8ovkuykeRYyT2Sv2Q5eOiU2/csVq4/iJjOTTu3Hkzc9vli5fjzuhouRLlwPMe3ygX1+f4Fg1f0emZNXBTEnmRxr7lOew9s2h8fajBVi1YdMMunM2+j0PobWr1p2NIjW9aBCPuRk/5C8S2SrSS3SV7LcxARz8I9ipUf70/yyO3rth5OXLpzqfWAoXG40DznN+aEeM4bfEXy9l7Or4mLgtiTrO45H2jvhQ175Pr6TdaiVQfM8unM2yi0/oZWbxq29MiWdSDCfhjWXyj+m+QHkpWaw4iJuWNmsXLzviSP3LJb68HEgs2LJ3//gsGVCYcLTXNiPOe2zORezrGJi4LYk6zuO59o74nmHrm+fl9rgTmcE7NC629o9aZhS49sWQci7IUh/YXiupJbtYcQTQcTuxcrt84ieWVh/IMwPyX/bKPiD6rn5ITzBo/pYrhQOamWc+Ip1eXkWs5elWN7Oc8mLm5iT7K59fylvT9575PLa/e5FpjDOTErtP6GVm8atvTIlnWAvTBCXvy/KPmF9vChXX6yW/TjHCSn7BoNI2pDiTumFy+tnZeTzhl8r2Qk4XChZU75Ycc80Mu5NnFZEHvS+80XBu19ymuvXF2377X4bPqSoU9+86nyiVs/Xr5z+0fLd+78YPmi3e8pz551Z/kzefz+nBOzQutvaPWmYUuPbFkH2ItMyQv/OyRnSl7XHjwkym4k13xD8mnJ1OKp8bNz8tmlixIOF0Zz6lkJ8oMop43ndck70p5vE5cFsSe93X7h8X2vXF2377X4aNLQ0JZTXxy6f/qSoco3nypXtn68XNn+0XJl5wfLld3vKVdm3VmuzF44eP9BNw9+0eQ6OCdmhdbf0OpNw5Ye2bIOsBeZkRf9aZKX1IcNXWSA5Jtti6/1b1Cc0+z8nHpWad2Ew4XmOTPK6e1yxmimpz3jJi4LYkdSX3xQey5crMv0mkOoxSdTFg+vts7w0LmThoYqU18cqnQYTFQOunmwcvj1g98xtR7OiVmh9Te0etOwpUcm1uHjfuWBfeiRvOCvKTlNe8jAYML6vCKZ1O4snXZm6dmOw4XxAcNozmiV0+tz5nhOSnvWTV3cRD9pzwTG+bZnLq45hFp8MmXx8Lx1hocqXQ4mKnOvGvy2ifVwTswKrb+h1ZuGLT0ysQ4f9ysP7EMP5OX+45JHtQcMDCasz5DkC53O0xlnlI5POFyoz2mN+UE8p67KQNrzburiJvpJeyZQz6c9c3HNedbCc9Ob6Y8Mz5iyeLiScjDxat+lg2tnvSbOiFmh9Te0etOwpUd8jbAD+9ADebH/umSZ9nCBwYT1uVuyVpIzdeZppQ0SDhfqclY8p7TOD08pPZ/2zHNhAMmYelbyfHZcW2/etXB3pTdj0dLVpz8y/EgPg4lK36WDl2S9Ls6IWaH1N7R607ClR3yNsAP7kJK81G8h+av2YIHBhNV5XTJXsnrSc3XWqaW3Sv6WYLgQ5eT2ObuWkxrylrRnnwsDSMbUF9i8nh3X1htaPS6bsWjp/0x/ZLjS42DizyecP/iuLNfFGTErtP6GVm8atvTIxDp83TOT6H8K8kI/W3ugwGDC+rwk+Uqa8/XDk0v3JRwuNOScE5Pl3BNKn0t7/rm4geRM/mHH9HPj2no16tGuyVUzFi09NIPBROWE8wc3zHJdnA+zQutvaPWmYUuPTH198HHPTKH/KcjL/A7awwQGE9bnWsn7056xc04sHZdwuNA5349yXmO2Srs+Lg6gOyb/wGPy2XFprVr1aNfkqhmLll6Q0WBi3yzXxfkwK7T+hlZvGrb0yNTXB1/3zQR63yV5kZ8keU17mMBgwto8LVm313N27gmlHRMOF+pzfJTzm+W4hhyVdn1cHED3XPwDj0tr1apHuyZXzVi09MqMBhMHZ7kuzodZofU3tHrTsKVHpr4++LpvJtD7LshL/GckI9qDBAYTVubPkkMlb87irJ13fOl/mg4Xmg8YKhfEc2zzXDgx3ytdmHZ9XNxAOq49Ny6tVbMmG+pyzYxFS8/IaDBRyHJdnA2zQutvaPWmYUuPTH1t8HXfskbvuyAv8O+TvKA9RGAwYWWul3w0y/N2wXGldyUaLkQDhpa5qJa+prmllzVyeQDpuPTcuLRWzZpsqMs1MxYt3TmjwUTHv4a7G5wNs0Lrb2j1pmFLj0x9bfB577JEzxOSl/fVJXdpDxAYTFiV1ySXSz5t6txd+L1SOcFwYVUurmV+51xyzGge6GV9XNxAOi49My6tVbMmW2pzyYxFSz8y/ZHhv/U4mHjxhPMHE/+tV0lwLswKrb+h1ZuGLT0y+bXB173LCj3vgry8H6s9PGAwYU3+IjlH8k+mz93F80u/TTBc6JhL57XM072sj0sESMelZ8altWrWZEttNmrXm+mPDF/W42Bilqn1ci7MCK2/odXbLZvuYpNfG3zdvyzQ7y7Ii/s62oMDBhNWpCw5XrJWXmfvkmNKdyYYLozn6CiXdcrcKJfPLS3rdY1cJEA6rjwzrqyzW9xd+WnXl+mPDH9oyuLhcsrBxG/6Lh18i6n1cibMCK2/3DPt2dQbk18XfN2/LNDnhOSlfQ3J77QHBwwm1PKq5GrJhpI18j5/lx1duibBcKF15tTniubp6VtgubiBdFx5XlxZZ7e4u/KRpCdTFg+vs87w0CtdDiaWzL1q0Mj/UcB5MCvE/oZYc1I29cb01wUf969X9LkL8tK+r/bQgMGESu6W7CJ5t+b5u3xu6Yz4gKHFcKFyxVH1ubJZjmyaD/ayRi4UIB1XnhdX1pkGd5dZ3fRkneGhr00aGnou4WDiicOvH/x4XuvmPGQrxP6GWHMStt2/Jr8m+LqHvaC/XZAX9vdLVmgPDRhM5JJnJedKZkjeqX32aq48qnRW0gHDVfEc0TxXT8zho/lAr+vkYoFpPp4pV54VV9aZBneXOWn6MWlo6O+nvjg0b/qSoRdaDCaen71wcP5BNw++J++1cxayE2J/uWOas60vpr8m+LiHvaC3XZAX9lO1BwYMJoxkWHKv5ELJPgMG/1aNXl11ROnyjsOF8QFD01xTy2Et89Ze18nFDdN8PFOu1OTzM83dZUYWvfjmU+V/3/rx8vrbP1o+cOcHyxvsfk/5vabWG8c5MCvEZy3Emjux8d7N42uCb/uYFn3tgrysf1h7WNAmT/VHf3XpoozyS3k5X2pxHpUsSpAByYKB6DMhLpL8QHKiZK5kZ8lXJD1/d0Cerj68dFPC4cJorq3l0M657pDRvJ7VWrlgYJKP58mVmnx/nrm7sud6HzgDZoX6nIVadys29iOPrwe+7WMa9LNL8rJ+ogUDiGp+IZnXH/3NIB/T7gvyde2hpTsTDBc65+BS5UfNM5zVWrm4YZKPZ8mlmlxaa7e4u7LlQw/Yf/NC7DF3yzhb79q8vh74tJfdopdd6o8+W+JlxWHEYH/0oZvv0+4FdF13SOnJicOFNgOGKAcVR3N9pxy4KkuyXC+XTTboYSPfeuBaPb6fQ+6ubPhSP3tvXojPGHfLOFt7kdfXAp/2shv0MIX+QvG7SgOJkbHvjrDmwxeh5/qDimtIXkswXBjNDc3y3frc2JjfZLlmLu7e0b/mfOuDa7X41v847q7eadee5a/PvpsX4vPF3RKxuQd5fi3wYS+7Qf9S6i8Uf6cwlPiNZG3t2mGPGw4sfrrZgKHJcCHKAY35cTz7N+TurNfNxZMOfWvPt164VksI55FnML00dWfVDxN9Zc/NC/X5Cv1usb1+0+vzaS+7Qd9S6i8U/1thKHGV5G3atcMuNx5Q3LyLAUPlpnhmt86C/VblQhNr5wLqDl/sOvOpFy7WEsp55DnsXtqae+2JyZ6y3/kI8dkK+W5xofY81ujDXnaDfvWgv1A8JeehxCnaNcNON+1f7Gs3XIgNGFrm5n3b5mATa+fiTo5eJeNLT1yuw+W1J5X382hT7d3qtVbT/37etfm6zyaF+lyFeK+4UnMe63R9L5OiVxnoj/4qzryGEvdJ1tCuGXZasF/xvoTDhfHsE+WWdtk7yq1RNjW1fi6kzuhPd1zvDevXryEJ7q7OsqjT5j7avDafhPpchXavuFRvXmt1eT+ToD8Z6C8UP5jjUKJY/f20a4adbt6n+He37FP8W8LhQuvMGs9tzfMpk3VwMTXHF7V0XO+Py2s3vX7bzijPaHNZ1mdz/2xem09CfqZCuVNcqzOv9WrXaQp9yVB/obhdjoOJdbXrhb1u3bs4tdlwoeWAYa/63N4qe9blNYnR79jh8q5HP3rjcp9cXXfeddh0Vnlex5moy+a+2bw234T4PFX5fp/kWZ/tz77N9WaJfmSsv1C8OKehxK3atcJut+1VPDvhcGFVFk7MHs1zR32ezKMW7cvbhgtLu34bepAV13rl2/6GdGa1n1kfe2Dy186yXzavzTchPU9xPt4nedeUdV0a67eldlf7pd0DY/oLxcdzGEq8Ifm0dq2w18I9i2tKRloNGO6IZ2br/KSW3Zvm8rxq0r60tC4v7Xp9vLRd6plLa7WxLhvOrvaz69sem/49bK4/q7X5yOdnqR2f7hOtWrKuR7MOW3rgUp/yrjtXOX23xGXadcJud8wsbtnlgGE0/bXs1jkDhdHsnGdd2pdXXpeZdl2+X9ou9M+FNfYitHOs/Qzn0QuNtdvcG5vX5iNfnqM0NO+SLPrg+vptq8fWvtjYGxM1WqO/UPy3nAYTG2nXCrv17168NclwYcKAIW0+lndt2pdY1pec9npDvbRt62eIexza2dauN6u+2LQ+m8+FzWvzlU1nM7Tau+mD9vpM75l2TTb0THuNWntvlf5CcZMchhIvS96sXSvsNVAoflryRo8DhyT5o1aN2pdZKNHa3zxo99amsAf59Ue7Fh9iup8273VWa/OV9tnU3EftmlwNexFmTOy7dfoLxVk5DCau0K4TdhsoFK/NYShRzblaNWpfaCFEa2/zpN1jG8Ie5N8j7Xpcj+le2rzPWa3NZ9rnU3MftetyLexDmDG179bpLxQPyGEwMVu7Ttgrx++WqGYr7Xq1Lzdfo72vedHusw3R3oMq7R5o9Ei7Jpdjuo8273FWa/Od9hnV3Eft2lwJexBmTO67dfoLxUNyGExso10n7DVQKN6Q01Cimvdq11ulfcn5Fu39zJt2v9lr+/cgxJptjuk+2rzHWa3Nd9pnVHsfteuzPfQ/zJjed+v0F4pH5TCYWE+7TthpQM5GjkOJG7XrrdG+6HyK9l5q0e47e233HoRat60x3T+b9zartYVA+5xq76N2jbaG3oeZPPbdOv2F4tE5DCY+o10n7DNQKK4p+UOOg4nNtWuO0770XI/2/mnT7j97be8ehFq3rTHdO5v3Nau1hUL7rGrvo3adtoW+h5m89t06/YXiYTkMJr6iXSfsM1AoHpDjUGJYu95WtC8/V6O9b7bQ3gf22849CLVuW2O6bzbvaVZrC4n2edXeR+1abYnrPWcv7d936/QXivvkMJjYQrtO2GWgUPyc5K85DibO0K65He1L0LVo75dNtPeC/Y5o90irZ9p1uhLTPbN5P7NaW2i0z6z2PmrXqx0f+s1e2r/v1ukvFHfKYTCxj3adsMdAofhByQs5DiWq+aJ23Z1oX4YuRHuPbKW9L+x5RLtXmn3Trtf2mO6VzfuY1dpCpH1utfdRu2Z6nV0d2j21PRp7bqXqdzPkMJg4SbtO2GOgULwr56HEI9o1d0P7crQ12vtiO+39Yc8j2j3T7J12zbYmjz7ZvIdZrS1U2udXex+166bP2dai3V8bk/deW62/UFwnh8HEr7XrhB0GCsVrch5KVDNDu+5uaV+SNkV7L1yivVfse0S7d5r9067bpuTZI5v3L6u1hUz7LGvvo3bt9DjberT7bFPy3GMn9BeK/5DDYKKaj2rXCl0DhWKfwlDiSclq2rWnpX1hake7/67S3jf2XX8PQq9fO3n3xuZ9y2ptobP5TOdFuwf0Ntu6tPse+p5bq79QfDWHwcRe2nVCz0ChuLvCUKKab2vX3ivty5ML203ae8je6+6Bdu012ufJxr7bvN82rw3cKVXazzh9zb427T0Icb+t1l8o/iKHwcT92nVCx0ChOFPyhsJQ4hnJ6tr1Z0X7MuXCdo/2frL3Efrp1lk03W/t39/VtWGc7Wc8D9rPPP3MvkbtPQlpv63WXyhenNOPc2yuXSvyNVAoHqn0nRLV7KJdvynaFywXtlu095f9z38PtOttRvuc2dJnW9bh2tpQz4WzngftO4A+Zlur9v7Y0IPg9csLXE6DiT9K1tCuF/kYKBTPUBxKPK5dfx60L1wua7do7zlnIL890K6zE+2zp9lf29bjytrQnAtn3jTt+4AemqlXe7983Wvr9ReKn8hpMFHNbO16YdZAofivkscUhxLVfFm7D3nSvoC5rN2hvf+cgXH02I7zmHdPWRtMceH8m6Z9T9A3N+4lm+vFm0aHEy/mNJh4TfJ17XphxkChuKfyQKKaK7T7oEn7YuaydgPnwB70OqJ9T+XdRxvX6VoP0Rz7yAeFdsulPmjurQ977YT+QvHCHL9rYrnk37VrRnYGCsX/ljxkwVDiZcmHtfthGy5pdMJ5sAN9rxfKHzJtWbdPPUWEfTR/j2jXlwVX+xLK14jg9BeKU3McTFTzrOQ/tOtGbwYKxQ9JLrRgIFHL/to9cQkXNNrhTNiDfajn6x8wbaiFP8iHgX3ka9xEWT/32r1yee140+hgYg1JMefhxMuSLbVrR/cGCsW1BnQ/3LJZHtPuCwAAvdL6Q7RPLyYAkvNtMAEP9BeKJ+U8mKjldMnbtetHZ/Ly/xnJ2RYMIeIZkfyrdn8AAMiKq4OJrNYDIB8MJmCd6o9WKA0mqnlOsql2D9BIXvjfLtlV8qAFA4hWmabdJwAATHBlMJHVOgDki8EErNRfKN6hOJyoZkF1QCH5O+1ehEpe8teUfEVyhOSnklcsGDy0y+naPQMAwDRbBxNZ/f4AdDCYgJX6C8UvKw8mJmaR5EjJtpKvSP5Buz++kJf5f5GsJ9lJMkdykWSRZLEFg4Zu8pB2LwEAyJMtg4msfl8AuhhMwFr9heJPLRhKWBkLXsTJeIYka2s/LwAAaNAaTGT1+wGwA4MJWEtewL+qPQCwNRa8jJMo1Q+7/Kz2swIAgC940QDCxGACVpOX8Gu1hwA2xoIXclIoviZZV/sZAQDAJ7xgAGFiMAGryUv4xySvag8CbIsFL+WkUNxW+/kAAMBHvFQA4WEwAevJi/hc7UGAbbHgpTz0HKr9XAAAAAC+YDAB68mL+Fslv9UeBtgUC17MQ8587WcCAAAA8AmDCThBXsb/RbJSeyBgSyx4OQ81M7WfBQAAAMA3DCbgDHkhn6Y9ELAlFrygh5bqB11uof0MAAAAAD5iMAGnyEv5cdpDARtiwYt6SPmzZJL22QcAAAB8xWACTpGX8tUk12kPBrRjwct6KHlR8gXtcw8AAAD4jMEEnCMv5m+R/EJ7OMBgwvsslLxX+7wDAAAAvmMwASfJy/n7JU9rDwgYTHiZv0r21z7jAAAAQCgYTMBZ8oL+gf5Av3PCgpd3X7NY8t/aZxsAAAAICYMJOE1e0t8quVV7UMBgwoucKXmX9pkGAAAAQsNgAl6Ql/VTtYcFDCaczQOS/9A+wwAAAECoGEzAG/LCvqlkpfbQgMGEMylJdpKspn12AQAAgJAxmIBX5KX945JHtQcHDCasziuSkyXv0T6vAAAAABhMwEPy4r6m5CDJy9oDBAYTVmWZZL7kfdpnFAAAAMA4BhPwlrzAry1ZqD1EYDChnuqPbBwqebf2mQQAAADQiMEEvCcv8tMlD2kPExhM5J57JLtI3qZ9BgEAAAC0xmACwZAX+v+V3Ch5Q3uwwGDCWJ6RHC1ZW/u8AQAAAEiGwQSCIy/2/yg5QvK09oCBwUQmeV5yhmRd7bMFAAAAoHsMJhA0ecn/muQMyYvawwYGE4kzIrlFsrfk37TPEAAAAIDeMJgAxsgL/2fHvpPiTskS7eEDg4nRLJbcLjlRMlPyNe1zAgAAACBbDCaANvoLxY9K/p9kI8nWkt0k35XM0Yy8oC/qMjcNRP+dTTlKcqBkL8lOkq0lm0jWl3xWe+8BAAAA5IPBBAAAAAAAUMNgAgAAAAAAqGEwAQAAAAAA1DCYAAAAAAAAahhMAAAAAAAANQwmAAAAAACAGgYTAAAAAABADQMJAAAAAACghoEEAAAAAABQw0ACAAAAAACoYSABAAAAAADUMJAAAAAAAABqGEgAAAAAAAA1DCQAAAAAAIAaBhIAAAAAAEANwwgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgFX+P97gRme002CEAAAAAElFTkSuQmCC"/>
                    </defs>
                </svg>
               <img src="{{URL::asset('img/brand/favicon.png')}}" class="header-brand-img mobile-logo" alt="Polly logo">
            </a>

            <!-- MENU BAR -->
            <div class="" id="balance">
                <span class="fs-11 text-muted"><svg class="side-menu__icon" width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M8.965 5.5873L9.08 5.6448C9.54479 5.88439 9.92333 6.26293 10.1629 6.72772L10.2204 6.84272C10.4504 7.29793 11.1021 7.29793 11.3369 6.84272L11.3944 6.72772C11.634 6.26293 12.0125 5.88439 12.4773 5.6448L12.5923 5.5873C13.0475 5.3573 13.0475 4.70564 12.5923 4.47085L12.4773 4.41335C12.0125 4.17376 11.634 3.79522 11.3944 3.33043L11.3369 3.21543C11.1069 2.76022 10.4552 2.76022 10.2204 3.21543L10.1629 3.33043C9.92333 3.79522 9.54479 4.17376 9.08 4.41335L8.965 4.47085C8.50979 4.70085 8.50979 5.35251 8.965 5.5873Z" fill="#8646F4"/> <path d="M9.87063 10.0771C10.3402 9.83751 10.3402 9.17147 9.87063 8.93189L9.17104 8.57251C8.54812 8.25147 8.04021 7.74355 7.71917 7.12064L7.35979 6.42105C7.12021 5.95147 6.45417 5.95147 6.21458 6.42105L5.85521 7.12064C5.53417 7.74355 5.02625 8.25147 4.40333 8.57251L3.70375 8.93189C3.23417 9.17147 3.23417 9.83751 3.70375 10.0771L4.40333 10.4365C5.02625 10.7575 5.53417 11.2654 5.85521 11.8883L6.21458 12.5879C6.45417 13.0575 7.12021 13.0575 7.35979 12.5879L7.71917 11.8883C8.04021 11.2654 8.54812 10.7575 9.17104 10.4365L9.87063 10.0771Z" fill="#8646F4"/> <path d="M18.8598 12.9425L18.1506 12.5783C17.2929 12.1423 16.6077 11.4571 16.1717 10.5994L15.8075 9.89022C15.4865 9.25772 14.8444 8.8648 14.1352 8.8648C13.426 8.8648 12.784 9.25772 12.4629 9.89022L12.0988 10.5994C11.6627 11.4571 10.9775 12.1423 10.1198 12.5783L9.41062 12.9425C8.77812 13.2636 8.38521 13.9056 8.38521 14.6148C8.38521 15.324 8.77812 15.9661 9.41062 16.2871L10.1198 16.6513C10.9775 17.0873 11.6627 17.7725 12.0988 18.6302L12.4629 19.3394C12.784 19.9719 13.426 20.3648 14.1352 20.3648C14.8444 20.3648 15.4865 19.9719 15.8075 19.3394L16.1717 18.6302C16.6077 17.7725 17.2929 17.0873 18.1506 16.6513L18.8598 16.2871C19.4923 15.9661 19.8852 15.324 19.8852 14.6148C19.8852 13.9056 19.4923 13.2636 18.8598 12.9425ZM18.2081 15.0077L17.499 15.3719C16.3681 15.9469 15.4673 16.8477 14.8923 17.9786L14.5281 18.6877C14.4179 18.9033 14.2167 18.9273 14.1352 18.9273C14.0538 18.9273 13.8525 18.9033 13.7423 18.6877L13.3781 17.9786C12.8031 16.8477 11.9023 15.9469 10.7715 15.3719L10.0623 15.0077C9.84667 14.8975 9.82271 14.6963 9.82271 14.6148C9.82271 14.5333 9.84667 14.3321 10.0623 14.2219L10.7715 13.8577C11.9023 13.2827 12.8031 12.3819 13.3781 11.2511L13.7423 10.5419C13.8525 10.3263 14.0538 10.3023 14.1352 10.3023C14.2167 10.3023 14.4179 10.3263 14.5281 10.5419L14.8923 11.2511C15.4673 12.3819 16.3681 13.2827 17.499 13.8577L18.2081 14.2219C18.4238 14.3321 18.4477 14.5333 18.4477 14.6148C18.4477 14.6963 18.4238 14.8975 18.2081 15.0077Z" fill="#8646F4"/> </svg>{{ __('You have') }} <span class="font-weight-semibold text-white" id="balance-number">@if (auth()->user()->available_words == -1) {{ __('Unlimited') }} @else {{ number_format(auth()->user()->available_words + auth()->user()->available_words_prepaid) }}@endif</span> {{ __('words') }}</span>
            </div>
            <div class="dropdown items-center flex">
                <a href="#" class="nav-link icon btn-theme-toggle">
                    <span class="header-icon fa-sharp fa-solid text-white"></span>
                </a>
            </div>
            <div class="dropdown profile-dropdown">
                <a href="#" class="nav-link pt-2" data-bs-toggle="dropdown">
                    <span class="float-right">
                        <img src="@if(auth()->user()->profile_photo_path){{ asset(auth()->user()->profile_photo_path) }} @else {{ URL::asset('img/users/avatar.jpg') }} @endif" alt="img" class="avatar avatar-md">
                    </span>
                </a>
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow animated">
                    <div class="text-center pt-2">
                        <span class="text-center user fs-12 pb-0 font-weight-bold">{{ Auth::user()->name }}</span><br>
                        <span class="text-center fs-12 text-muted">{{ Auth::user()->job_role }}</span>
                        <div class="dropdown-divider mt-3"></div>
                    </div>
                    <a class="dropdown-item d-flex" href="{{ route('user.plans') }}">
                        <span class="profile-icon fa-solid fa-box-circle-check"></span>
                        <div class="fs-12">{{ __('Pricing Plans') }}</div>
                    </a>
                    <a class="dropdown-item d-flex" href="{{ route('user.templates') }}">
                        <span class="profile-icon fa-solid fa-microchip-ai"></span>
                        <div class="fs-12">{{ __('Templates') }}</div>
                    </a>
                    <a class="dropdown-item d-flex" href="{{ route('user.workbooks') }}">
                        <span class="profile-icon fa-solid fa-folder-bookmark"></span>
                        <div class="fs-12">{{ __('Workbooks') }}</div>
                    </a>
                    @if (config('payment.referral.enabled') == 'on')
                        <a class="dropdown-item d-flex" href="{{ route('user.referral') }}">
                            <span class="profile-icon fa-solid fa-badge-dollar"></span>
                            <span class="fs-12">{{ __('Affiliate Program') }}</span></a>
                        </a>
                    @endif
                    <a class="dropdown-item d-flex" href="{{ route('user.purchases') }}">
                        <span class="profile-icon fa-solid fa-money-check-pen"></span>
                        <span class="fs-12">{{ __('Transactions') }}</span></a>
                    </a>
                    <a class="dropdown-item d-flex" href="{{ route('user.purchases.subscriptions') }}">
                        <span class="profile-icon fa-solid fa-box-check"></span>
                        <span class="fs-12">{{ __('Subscriptions') }}</span></a>
                    </a>
                    @role('user|subscriber')
                        @if (config('settings.user_support') == 'enabled')
                            <a class="dropdown-item d-flex" href="{{ route('user.support') }}">
                                <span class="profile-icon fa-solid fa-messages-question"></span>
                                <div class="fs-12">{{ __('Support Request') }}</div>
                            </a>
                        @endif
                        @if (config('settings.user_notification') == 'enabled')
                            <a class="dropdown-item d-flex" href="{{ route('user.notifications') }}">
                                <span class="profile-icon fa-solid fa-message-exclamation"></span>
                                <div class="fs-12">{{ __('Notifications') }}</div>
                                @if (auth()->user()->unreadNotifications->where('type', 'App\Notifications\GeneralNotification')->count())
                                    <span class="badge badge-warning ml-3">{{ auth()->user()->unreadNotifications->where('type', 'App\Notifications\GeneralNotification')->count() }}</span>
                                @endif
                            </a>
                        @endif
                    @endrole
                    @role('admin')
                        <a class="dropdown-item d-flex" href="{{ route('user.support') }}">
                            <span class="profile-icon fa-solid fa-messages-question"></span>
                            <div class="fs-12">{{ __('Support Request') }}</div>
                        </a>
                        <a class="dropdown-item d-flex" href="{{ route('user.notifications') }}">
                            <span class="profile-icon fa-solid fa-message-exclamation"></span>
                            <div class="fs-12">{{ __('Notifications') }}</div>
                            @if (auth()->user()->unreadNotifications->where('type', 'App\Notifications\GeneralNotification')->count())
                                <span class="badge badge-warning ml-3">{{ auth()->user()->unreadNotifications->where('type', 'App\Notifications\GeneralNotification')->count() }}</span>
                            @endif
                        </a>
                    @endrole
                    <a class="dropdown-item d-flex" href="{{ route('user.profile') }}">
                        <span class="profile-icon fa-solid fa-id-badge"></span>
                        <span class="fs-12">{{ __('My Profile') }}</span></a>
                    </a>
                    <a class="dropdown-item d-flex" href="{{ route('user.security') }}">
                        <span class="profile-icon fa-solid fa-lock-hashtag"></span>
                        <div class="fs-12">{{ __('Change Password') }}</div>
                    </a>
                    <a class="dropdown-item d-flex" href="{{ route('logout') }}" onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();">
                        <span class="profile-icon fa-solid fa-right-from-bracket"></span>
                        <div class="fs-12">{{ __('Logout') }}</div>
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </div>
            </div>

            <!-- END MENU BAR -->
        </div>
    </div>
</div>
<!-- END TOP MENU BAR -->
