//
//  NewsViewModel.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

class NewsViewModel: ObservableObject {
    @Published var selectedCategory: SPCategoryType = .football
    @Published var matchType: SPMatchType = .upcoming
    
    // swiftlint: disable all
    /// In a real app you will get the leagues from the network of from cash and filter them by category's id
    func getLeagues(for category: SPCategoryType) async throws -> [SPLeague] {
        [
            .init(name: "Premier League",
                  image: "https://s3-alpha-sig.figma.com/img/f56e/23e5/2b5857aae2a5cf8e81fe395f99643840?Expires=1703462400&Signature=ibuh79FDqLzTYg7w-7Tc8~6bdDnyyWGh6UFHKzpTmMeHbaRmxHEweCQe8NaUSlXYPkAGUQHY3Cb-OQjk5SxHd9N4Kn~eJoyAjF5ERxnXlZlyqsDY~CxE0lFOWiWbVa~IOf~zcJf~6lzVrbFNyq~6gjG6rUJkkVR22HU87dqu0Pq9t9lhoj8RDJHvCW-fr9vDKxv~XwTdHI6-EP6UrgEqRqyu3bupOOqYdVnpDgwI1w6GfXhKMp3zXPBSgu0u4kdsVva0SNGOf0JWcsP4FtuCOYeP7E2o8BentGob0kWANkzG6bnOTU2eZJEcC09cgvl-cqywd1CKFTYpSWsKR4ujtQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  category: .init(title: "Football", image: "⚽")),
            .init(name: "CBF League",
                  image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Brazilian_Football_Confederation_logo.svg/1200px-Brazilian_Football_Confederation_logo.svg.png",
                  category: .init(title: "Football", image: "⚽")),
            .init(name: "LIGUE 1 League", image: "https://a2.espncdn.com/combiner/i?img=%2Fi%2Fleaguelogos%2Fsoccer%2F500%2F9.png", category: .init(title: "Football", image: "⚽")),
            .init(name: "Korean League",
                  image: "https://i.bleacherreport.net/images/team_logos/328x328/south_korea_national_football.png?canvas=492,328",
                  category: .init(title: "Football", image: "⚽")),
            //
            .init(name: "Premier League",
                  image: "https://s3-alpha-sig.figma.com/img/caf3/9c91/b1e17395683d9183a301519f03a26079?Expires=1703462400&Signature=Rh0gj7LCH5FZynVk6UZKrVZkbuGwfwB6eeiTpZBIDHCzxYjwbqt425JWOrq6geGshsxeUsW0tXId1dlXBhrAjFWzDGR0sFp2SZdUwAtlBaNnYN6aRjGQwQNIe8zWcGb0Y2km930qPvOKoqDjp890R9bAR-AqkFv4TJRRcDPZc6OLT37Ujc14JLu2oL0ULYY49UTLzibQB1P~r~bcV8KUqbGFUIgVTIkGMIkADbcrWmF5ltjwkMk7cRPRXvopCFQLnT6LknPA0aZAyiZZflJ6JC~38ChbCU1kWcPMSG~Mvz7aoEx3qjrnz3S-kyh76na~-OBrQVHokVV6aVADHl~Vig__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  category: .init(title: "Basketball", image: "🏀")),
            .init(name: "FIBA League",
                  image: "https://s3-alpha-sig.figma.com/img/a883/caf5/73867632713fa03b19c03143d5ad31d1?Expires=1703462400&Signature=DxYBnYGSzNFxRZLao23GLCTXD-AgtVHp3TcX1D5oqObeGeEHf38XfNWlxvWwmwXUH0Pt5BM1Kek6riAMd4KUNqQCXjzsLABazalIb-vLtOwJCEV69mf4-Xw0NYDJm8SxbhvNxcr4rmVOwXHwPaGrp7bi8hRxUwgUdinRFqluE~O3Gmd9t9NGfLqRp0qcuZbxCPjiRcZhWPyBh5r3-6-bkEXBEV27qmggL1j0CZPb46689u-BRGoOWjeZUDc4zXwMuj3xGrL2I2LkE~a6Tvbopajpuurp0E4qnS~MMqU6pG8wSGNU0cL~VaOQ7XfSkb5372oukD26w7UsBTdJULt8mA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  category: .init(title: "Basketball", image: "🏀")),
            .init(name: "NBL League",
                  image: "https://s3-alpha-sig.figma.com/img/21d0/30c6/f129d1b9ba359b22bf95948794a632f9?Expires=1703462400&Signature=R1Teg6xwAZglDR-0saBWs~gfjKD5glNq7LR1N1z8aIFMeZZzai5Ze5fqNALr9CV6zN8SmSI8Vsq-uJeum3T3dCG2wsbn3MbambTa2j2kjUH6XXJm0edz5K4WE433I4l~RCMZxD43HrJ6kBPD6MYeNQ2V9v0qPVmc4BZtvR9e~eQmcp-6avFrNdDD0~Gy49dSw-isjce0s2ZuWe20ANI5RB7m8~ItMJGz-qHXoBz6fpvQn3bmFIteSiqqyo2vEXR5ZIIIk2Clr3QuV~UfPv5RK7sXDSEwyQMxnnVULP3D8M4Kqp1Ry1zmKiWKdo5qsP7thvSRExmbKeWd4WuTjutUaQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  category: .init(title: "Basketball", image: "🏀")),
            .init(name: "Brooklyn League",
                  image: "https://s3-alpha-sig.figma.com/img/8d1b/dbe1/d670b5064cc53eae70f95547c4092786?Expires=1703462400&Signature=ZQhYRVJJHzJbn7NzFVGd2cAl-vGUi0PnBzxlItWN3gxOzSta5A2GRoXvPoT4yY2xIvNKqyOn4iHHjWqzauanhB628f5FVEwX-p7WlE7G~LhSYkhH1XfnbI2HtkYOhmnvO9hVCrZZNecJs18qKL1j7knDMO6A0U51hceoFFi5LA9hWlykmDO5kPn2wArfjvAPEFV~pJFRPxmNwBkp50pO9V7Lvcc6AG0yB-g-eOZXRXnYMDRd0AO5ntH19UyEjwwOIXdA9Oti-xqB7LgaXPAZV2MeMeyEb9NnGR6BD~DoUJ-nvAGbE-oaG9TRz6ttoE8ZZGehFZtkaQ6iOZi~adTDwA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  category: .init(title: "Basketball", image: "🏀")),
            
            //
            .init(name: "Hawks League",
                  image: "https://s3-alpha-sig.figma.com/img/2c36/8cae/f2e1ca048cdd8589587457f12f654421?Expires=1703462400&Signature=jfblSxNz-Kn1ZkvGDdzrxqHOF3~ERF781G8L-J8Ss3bMh53vUGzu-hKYKKqWP0~QeE1-~FaJjBPYn9GNm2CwpMw8eXNqS6kCSihI~AH16jzpvxMQ~p12ai6nLlMB0J74Ut3EVQKBhaSC8P4nZacXosQHH~6WABpk3FyLUoASSbYThWfYDPQzf~v8-hSWwjICBe2eGRwxhswlEuiXBDqo6nDCXP6ggHeaFKv3a-GzO42PeVhoVxykeaVmjeb0wY9hV8q1G0Na~YtlqLX80t5iYmw9ncq72lvVuyCZ7Tj92fNxjbXjsR6zbcibXEsTpZZMKhf6OKPUtRpn6kz33Fib8Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  category: .init(title: "Cricket", image: "🏏")),
            .init(name: "JPL League",
                  image: "https://s3-alpha-sig.figma.com/img/bde6/3f92/a3c5ffc59634fa39d58db24e098af046?Expires=1703462400&Signature=H7C7CyabF5yhbHSudIOph0OebK7QjlvjRfShLa2QiivMqbmMbmdJ0~bFhKVDX83Y1xIKn2BWvniSfsEX--N5~iPndcUtHlDsdFkI1XlL1WqaO8mJRwoT~nfInypxHw2E9iHFpP9JulOnrwva8WFlbPZbVplbHCmIrijZPftDmBYiDCufJrKexgoSIzWe~nUwJYY9hPzR5d~30lWbQin3ZmDndNY0jpJnopsoSUxY35-e1EVWjP0e0smu2piOGH~il5-fTH0BAhQWqgy9P6JnUfhDDRVklbWhXh7g2sWuKxUWI3dTHmV7sqpJzVEnMtoFux26biNtZbkjB4mqkyPoFQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  category: .init(title: "Cricket", image: "🏏")),
            .init(name: "Premier League",
                  image: "https://s3-alpha-sig.figma.com/img/1f42/6bde/87848bba8c2c548237a77d30f723f166?Expires=1703462400&Signature=F8akT4~Z0e8b4K7~iuiKW5rmPCk1848IHL77pQPt2cOpsbVNKlJIL9zMyCS3fzKyxLoku~ew8UZYOCWQRs~8zXoun-bwyNSR98VdEkgKiI89ayjCY6RrmZm6VOCWAXu~iOQyLFUpIDlHaa~JREE-s0-54jgnSbSFzTza1JZQiqR350S8vC4TyIKzjx35jmtvhoXU6aoHLbxSqch6Yx69Od2SGE-Ab0atTr-fdp-WTAevhnpbNz~F3fmOITPGqPxdvV~0EwU2DB0V1oBL2qSRyRtUZ55CfgHuHCLJ6Ii6lEI-WD4i1uWKOKt5umuaDrhiM~9v5~RKZHUcPX3pkf~rvA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  category: .init(title: "Cricket", image: "🏏")),
            .init(name: "IPL League",
                  image: "https://s3-alpha-sig.figma.com/img/770a/8f73/26a7cf325f3da38f513a9bc5fc4551f8?Expires=1703462400&Signature=BvwFqbZQOcQd1~Xk1l5MacQKjtC888ka4XMLP9fQAwnyaMlKa9ZysdxAGsPc4UBg8ddnUZT7eCoImo7CG0OmusjqS1y7q5EFhyTee6pDZ7DKR4JtcVOkWu4fqt3EAQ6glhd1-0v-hpO~E9CumCU68xKxpebGdxWakM6V2QcS6glXblEH9tpwhd5bDLcyXPcykNixg4OzbnX76i0rnZc7JQ3KsSuvnkiztBmBRpnA0shy~2wfUEBm1ueMKL-Vhamt7Ju-GXlqyRLUozyBYQ-C2335BbS4RZ4wL3EM6OacapTqZAT3lZ9fCHhKBY49woFQnrZW0lC2j1nPI2xsrdsicw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4", 
                  category: .init(title: "Cricket", image: "🏏")),
            
        ].filter { $0.category.title == category.rawValue.capitalized}
    }
    
    func getUpcomingFootballMatches() async throws -> [FootballMatch] {
        [
            FootballMatch(team1: FootballTeam(name: "CHELSEA",
                                              image: "https://s3-alpha-sig.figma.com/img/32a3/c064/9e0c9c5fcab667fc4b0e3e5ab40d86e0?Expires=1703462400&Signature=ikA73Frx6fWlRZPDY9oQSOBJLikmbjCR-Mfue57vlv5tbHa6ed1JTcVi6yC6wE3PKCzN8QGNbHiXuY-JaTw1fiYPS8c3CC-JLlDxGkQUN7x4~QSuCcHa3r~SJARFkZsU9zZPtUwtcLticfH1FX4ItB67btIvC0CrEtatx9Jp8lSXf7FiC-uxgx3TkNM2lY9ZKWz0znpRRmhCmk~R9bO8easBdnhXZYPj1tiBYAHx-SUHlUm2ygj-c-CDtBYcBBd1BDWIoQVgKqdu9Wp9ha1OARlbxhZC23jkFJMKr0TsrL1mCFW1q8r8YZHnGkJYBu-clE9UGo7FoBlleG8xrwV9RQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 2),
                          team2: FootballTeam(name: "MAN UTD",
                                              image: "https://s3-alpha-sig.figma.com/img/29a0/0d88/7b70ab624fe541b4433ff7143258d3dc?Expires=1703462400&Signature=Q7UUgmRCEBR4KQeUeNQFVR~4ZOKEg0JirMLox9k5t1iBfx4M2HkkHXAknn1whI3IlmUq4KNHHagfNOO2zUEsx0eA6Nuxul~P0HYAxvAprOBd1S4sIur-yd5s0Y8sbnBMS6DD8T2NipMsNtwk~5oY-j6qp0~1IM92AbURSd5y5oDk255Xq8RsodK8Aw8vdhtf2HjT99gxzfCiqVG2H7IJ3hBSIprr~fj9tlYxGEogM~vUgA2u8HRr7J7J9Le96Y4QU4sE~zK3b1XSbS1I~aGpOojm2lypnXI~M7f2mkLE~3mQr2ChIqapp~4a0lhLyk9tW9cx~Zxp8wSMiLGXfhf~ig__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 4),
                          league: FootballLeague(name: "Premier League",
                                                 image: "https://s3-alpha-sig.figma.com/img/f56e/23e5/2b5857aae2a5cf8e81fe395f99643840?Expires=1703462400&Signature=ibuh79FDqLzTYg7w-7Tc8~6bdDnyyWGh6UFHKzpTmMeHbaRmxHEweCQe8NaUSlXYPkAGUQHY3Cb-OQjk5SxHd9N4Kn~eJoyAjF5ERxnXlZlyqsDY~CxE0lFOWiWbVa~IOf~zcJf~6lzVrbFNyq~6gjG6rUJkkVR22HU87dqu0Pq9t9lhoj8RDJHvCW-fr9vDKxv~XwTdHI6-EP6UrgEqRqyu3bupOOqYdVnpDgwI1w6GfXhKMp3zXPBSgu0u4kdsVva0SNGOf0JWcsP4FtuCOYeP7E2o8BentGob0kWANkzG6bnOTU2eZJEcC09cgvl-cqywd1CKFTYpSWsKR4ujtQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                          time: "7pm"),
            
            FootballMatch(team1: FootballTeam(name: "ALBION",
                                              image: "https://s3-alpha-sig.figma.com/img/d98a/82ec/915d786b1eedfac03b2ca8e7092786b6?Expires=1703462400&Signature=JZgn4SZLsHW8iA2Zw5BBljlCh3P5FvMV1NekUuAeAxhcn11f2fxKyikNpLAur3PmhSUj04ivRiUYl-LyI0~OOBayKp~5Jl3BuIMD7fc7vtK~gg7Ngk3qdoeWccTxMmUTHCDsC8g~Y7yM86WjSvwg7rPFEn9lIfkkaGGLXJ2l-upOr6hF9TCbMBYccLJGgRiLnIGyOLlTYcsibyOxL5qozIePwEl9y~tDDYIkbGcCcsfwNijlrShzDcbk98RmcFmUbaKmO5UWnrmLMSd0tOjSjfHat42NMNUioFnWAhsiB8bfa5y41dMmPK~~AZZYb8bjydFnQDlvzsDYJpDj0LxVkg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 1),
                          team2: FootballTeam(name: "Arsenal",
                                              image: "https://s3-alpha-sig.figma.com/img/4d91/92b5/10bb41bb6672c047768b8c47d8dcda1b?Expires=1703462400&Signature=hxAPMupHx5Wpmtna73ekdTi-Qemw26sr68twDJ33JI8q9TftTZ-vVbLQR2BpxzENbZ8ExIK8CvSkqd-xTKG3nUI9-X6vPe04w9mhfx9c2y0NWURBEGewWv2DfxwXaJPSZu5e6NkK~FW4Y6HdYCxuw0ysj6SB6YBIyYi8A35-JrIVW~Oi4ioULXhRvCj~9XvmuYJVmyonkzIOkjkm5cejjf49IoiIFpVS8IkoXqR-dFASn8DeaOQy5GvISoOnadsZ0pc74-usN~456KktP8V9nkYDD36xhuU5oLLEyzOT6ohJzjcCqwrAx~gHzinLMlIkzSr3rMHkxeF8fwJwN6RqJw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 0),
                          league: FootballLeague(name: "Premier League",
                                                 image: "https://s3-alpha-sig.figma.com/img/f56e/23e5/2b5857aae2a5cf8e81fe395f99643840?Expires=1703462400&Signature=ibuh79FDqLzTYg7w-7Tc8~6bdDnyyWGh6UFHKzpTmMeHbaRmxHEweCQe8NaUSlXYPkAGUQHY3Cb-OQjk5SxHd9N4Kn~eJoyAjF5ERxnXlZlyqsDY~CxE0lFOWiWbVa~IOf~zcJf~6lzVrbFNyq~6gjG6rUJkkVR22HU87dqu0Pq9t9lhoj8RDJHvCW-fr9vDKxv~XwTdHI6-EP6UrgEqRqyu3bupOOqYdVnpDgwI1w6GfXhKMp3zXPBSgu0u4kdsVva0SNGOf0JWcsP4FtuCOYeP7E2o8BentGob0kWANkzG6bnOTU2eZJEcC09cgvl-cqywd1CKFTYpSWsKR4ujtQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                          time: "7pm")
        ]
    }
    
    func getUpcomingBasketballMatches() async throws -> [BasketballMatch] {
        [
            BasketballMatch(team1: BasketballTeam(name: "76ers",
                                              image: "https://s3-alpha-sig.figma.com/img/9312/5d83/f2e5029678e0afca4895bc74927d179b?Expires=1703462400&Signature=pbaUt90N1osopw0FpACN7A3pS8S10m-2myCfq96~lA6tWLXz0qavulcFzQCsywp4XAScttxYMGhFJVEzEedQZVovDAxWkidPE7WMNkP0q9askNOga9hhvPO16wOGMIahvMFGNDTBrn81yMFJgXf8qWJ3Riv6KdTqeu-Uj2rsQbIIKklmFiZMfJtMLdBQkl413wk31U2k3m8MzgSQxjRBZ42XuDlA4-lirTRfpKklwJUpg1MIzaMchlRlnz8ORyJhRMHlfeF5uEBDqx-ec7xWwdqlxBes2dR5Sst89KLofACUcquYiEhEGZaKiiJ9dp5bXCjPC7Zd6gNkYuYthwLngA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 95),
                          team2: BasketballTeam(name: "TR raptor",
                                              image: "https://s3-alpha-sig.figma.com/img/1377/3bc0/ae62509a9edf511754f235ec5514a44b?Expires=1703462400&Signature=Wc3mpKV8se5NW17w~~UOUkeiUN~ggzKGyC1QVBCQr-KP~J9YzYA-aQBBFdvzykB552TjnBUn3q4oQwzf9Q8Uuy0hFTg6fU~U46PxC6bK1XVnzsdQVxjpht1JrXrT5M2k2Xgsj50tMrcWQKLhFhVdgZqIqSHyJATuCZci-V4pre66sfQadF0F7DnHvmgeI7RIG0~yeHJgOpuistLzGd2NPFfDN9WDr95cre3ryFu2XFIVI1bhna9~5npNQ1VIQ8ttG3o1lyVHhbd1wB5sQ-~6bQVoBZ-ZKmEOQcMY6lEqpEimWnbGPUUug6gsiok9MpZ~rZf-HtmFOrsLWURi9LFvTw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 92)),
            
            BasketballMatch(team1: BasketballTeam(name: "Cavalers",
                                              image: "https://s3-alpha-sig.figma.com/img/b075/83d3/7abde2240d3c6415d348fb17cb822556?Expires=1703462400&Signature=oQJaXoTW6UsylPk8Kr5q0GqFbpttHJtTAIsEQGseajfbaU8UCnU4pbDN8vTv0wvQD~YExIonhhu0JjckAfxERGaKN6xfosheS82ChVnYFCuSBOIHh1l2RBqV8hpVmpOtIpaqTTjjz9sJd75IcRXPBivd614u0qdqXiF6nQcp4qYT1QTLpjEeLQfv-liGxBvv4leA5rbq-rWzuuIyF-EtRh7H1BIyIxQB6M1Uc0sYfofuJSD7wt04pMR8SUZczus5NHKkHiumg~GkGy1iKWm-d3-Lc9WK0UXHOdCUtaEhzrGKyIO51D7ZMOJLDtCJkSdXqrQvE0LrQDlK~07fQVbtYQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 90),
                          team2: BasketballTeam(name: "Lakers",
                                              image: "https://s3-alpha-sig.figma.com/img/bb68/a2dc/4f8fe4d7a4ccb7a29d6c0556fa7c3431?Expires=1703462400&Signature=DAQ-ltmT4FkLh6PjEmlSIqzBTPWiw3x8KBBA7vn1NgtiMhU12QNQmNphPgHrZ~z2hJbAeQ-jfQgSx-CpAokE310zIOrembamfQm1px1dzeR4hwTUMNiyAgoEnnK08dUODub8eWbrQJMYhrQOSprXs3hlEPbER4-FFZSr0rJ5GGWYif3D4WR-8Vj6CaVJ4xTtkXs8KBbpcgr-z6Ug0-5HGz~BhuYbmrNC473COomNdW7Feidzrm~OLcxrxT0g~EkFCmUaPQD3G4K3SVRmiebExMbS8KlJxtISUz9BhG60UL1RND6nS-Q2Ymqbnk6Ic3KHIy7B9KqnodjBmeSWYoHwjw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 96)),
            BasketballMatch(team1: BasketballTeam(name: "76ers",
                                              image: "https://s3-alpha-sig.figma.com/img/9312/5d83/f2e5029678e0afca4895bc74927d179b?Expires=1703462400&Signature=pbaUt90N1osopw0FpACN7A3pS8S10m-2myCfq96~lA6tWLXz0qavulcFzQCsywp4XAScttxYMGhFJVEzEedQZVovDAxWkidPE7WMNkP0q9askNOga9hhvPO16wOGMIahvMFGNDTBrn81yMFJgXf8qWJ3Riv6KdTqeu-Uj2rsQbIIKklmFiZMfJtMLdBQkl413wk31U2k3m8MzgSQxjRBZ42XuDlA4-lirTRfpKklwJUpg1MIzaMchlRlnz8ORyJhRMHlfeF5uEBDqx-ec7xWwdqlxBes2dR5Sst89KLofACUcquYiEhEGZaKiiJ9dp5bXCjPC7Zd6gNkYuYthwLngA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 95),
                          team2: BasketballTeam(name: "TR raptor",
                                              image: "https://s3-alpha-sig.figma.com/img/1377/3bc0/ae62509a9edf511754f235ec5514a44b?Expires=1703462400&Signature=Wc3mpKV8se5NW17w~~UOUkeiUN~ggzKGyC1QVBCQr-KP~J9YzYA-aQBBFdvzykB552TjnBUn3q4oQwzf9Q8Uuy0hFTg6fU~U46PxC6bK1XVnzsdQVxjpht1JrXrT5M2k2Xgsj50tMrcWQKLhFhVdgZqIqSHyJATuCZci-V4pre66sfQadF0F7DnHvmgeI7RIG0~yeHJgOpuistLzGd2NPFfDN9WDr95cre3ryFu2XFIVI1bhna9~5npNQ1VIQ8ttG3o1lyVHhbd1wB5sQ-~6bQVoBZ-ZKmEOQcMY6lEqpEimWnbGPUUug6gsiok9MpZ~rZf-HtmFOrsLWURi9LFvTw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 92)),
            
            BasketballMatch(team1: BasketballTeam(name: "Cavalers",
                                              image: "https://s3-alpha-sig.figma.com/img/b075/83d3/7abde2240d3c6415d348fb17cb822556?Expires=1703462400&Signature=oQJaXoTW6UsylPk8Kr5q0GqFbpttHJtTAIsEQGseajfbaU8UCnU4pbDN8vTv0wvQD~YExIonhhu0JjckAfxERGaKN6xfosheS82ChVnYFCuSBOIHh1l2RBqV8hpVmpOtIpaqTTjjz9sJd75IcRXPBivd614u0qdqXiF6nQcp4qYT1QTLpjEeLQfv-liGxBvv4leA5rbq-rWzuuIyF-EtRh7H1BIyIxQB6M1Uc0sYfofuJSD7wt04pMR8SUZczus5NHKkHiumg~GkGy1iKWm-d3-Lc9WK0UXHOdCUtaEhzrGKyIO51D7ZMOJLDtCJkSdXqrQvE0LrQDlK~07fQVbtYQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 90),
                          team2: BasketballTeam(name: "Lakers",
                                              image: "https://s3-alpha-sig.figma.com/img/bb68/a2dc/4f8fe4d7a4ccb7a29d6c0556fa7c3431?Expires=1703462400&Signature=DAQ-ltmT4FkLh6PjEmlSIqzBTPWiw3x8KBBA7vn1NgtiMhU12QNQmNphPgHrZ~z2hJbAeQ-jfQgSx-CpAokE310zIOrembamfQm1px1dzeR4hwTUMNiyAgoEnnK08dUODub8eWbrQJMYhrQOSprXs3hlEPbER4-FFZSr0rJ5GGWYif3D4WR-8Vj6CaVJ4xTtkXs8KBbpcgr-z6Ug0-5HGz~BhuYbmrNC473COomNdW7Feidzrm~OLcxrxT0g~EkFCmUaPQD3G4K3SVRmiebExMbS8KlJxtISUz9BhG60UL1RND6nS-Q2Ymqbnk6Ic3KHIy7B9KqnodjBmeSWYoHwjw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                              score: 96))

        ]
        // swiftlint: enable all

    }
    
}
