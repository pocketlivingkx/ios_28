

import UIKit

class LearnerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let levelsEducation = ["Beginner", "Intermediate", "Advanced"]
    let colorsForTopics = [UIColor(red: 0.1686, green: 0.8039, blue: 0.9843, alpha: 1.0),
                           UIColor(red: 0.3451, green: 0.7843, blue: 0.3882, alpha: 1.0),
                           UIColor(red: 0.9961, green: 0.4667, blue: 0.2157, alpha: 1.0),
                           UIColor(red: 0.5804, green: 0.4039, blue: 1, alpha: 1.0),
                           UIColor(red: 0.1686, green: 0.8039, blue: 0.9843, alpha: 1.0)
    ]
    let imagesForTopicksNames = ["coupon 1", "refund 1", "bar-chart 1", "pie-chart 1", "currency 1"]
    let topicks = [LessonLearnTopic(name: "Fundamentals of finance and investments", description: """
What You Will Learn in This Course:
In this comprehensive course, designed specifically for beginners in the United States, you will gain a solid understanding of the fundamentals of finance and investments. We will guide you through the essential concepts, terminology, and strategies to empower you on your journey to becoming a knowledgeable and confident investor.
""", lessons: [
    LessonLearn(title: "Introduction to Financial Markets", duration: "5 min", text: """
- Overview of financial markets and their role in the economy.\n
- Understanding the key players: investors, issuers, and intermediaries.
- Introduction to financial instruments: stocks, bonds, and other securities.

Welcome to the first lesson of our comprehensive course, \"Fundamentals of Finance and Investments for Beginners.\" In this initial module, we will embark on a journey to explore the dynamic world of financial markets.

**Understanding Financial Markets:**
Financial markets serve as the lifeblood of the global economy, connecting investors, companies, and governments. These markets facilitate the exchange of financial instruments, allowing capital to flow between those who have it and those who need it.

**Key Players in Financial Markets:**
Let's begin by identifying the primary participants in financial markets. Investors, seeking avenues to grow their wealth; issuers, such as corporations and governments, in need of capital; and intermediaries, including banks and brokers, facilitating the smooth operation of these markets.

**Diverse Financial Instruments:**
Financial markets boast a rich variety of instruments, each serving a unique purpose. From traditional stocks and bonds to more complex derivatives, these instruments provide avenues for investment, risk management, and speculation.

**Stock Exchanges and OTC Markets:**
Financial instruments are traded on various platforms, including stock exchanges and over-the-counter (OTC) markets. Stock exchanges, like the New York Stock Exchange (NYSE) and NASDAQ, provide a regulated environment for buying and selling shares of publicly-listed companies. OTC markets, on the other hand, offer flexibility in trading less standardized instruments directly between parties.

**Market Participants' Objectives:**
Investors enter financial markets with diverse objectives. Some seek capital appreciation through stock investments, while others prefer the stability of fixed-income securities. Understanding these different motivations is crucial for navigating the complexities of financial markets.

**The Flow of Capital:**
Financial markets enable the efficient allocation of capital. Investors channel their funds into instruments that align with their financial goals, and this capital, in turn, fuels economic activities and fosters growth.

As we delve into this lesson, consider the intricate web of relationships within financial markets. Whether you're a novice investor or someone looking to deepen their understanding, grasping the fundamentals of financial markets lays the groundwork for informed decision-making. Get ready to explore the intricacies of this fascinating ecosystem!
"""), LessonLearn(title: "Investment Types and Their Characteristics", duration: "7 min", text: """
- In-depth exploration of various investment types.
- Differentiating between stocks, bonds, mutual funds, and ETFs.
- Assessing the risks and potential returns associated with each investment.

Welcome to Lesson 2 of our course, \"Fundamentals of Finance and Investments for Beginners.\" In this module, we will unravel the diverse world of investment types and gain insights into their unique characteristics.

**Diving into Investment Variety:**
Investors navigate a rich landscape of investment options, each with its own set of characteristics and potential returns. Let's explore the primary investment types that individuals can consider on their path to financial growth.

**1. Stocks: Ownership in Companies:**
Stocks, also known as equities, represent ownership in a company. When you own a stock, you become a shareholder, participating in the company's success and failures. Stocks offer the potential for capital appreciation and dividends, but they also come with the volatility inherent in the stock market.

**2. Bonds: Lending to Issuers:**
Bonds are debt securities where investors lend money to issuers, typically governments or corporations, in exchange for periodic interest payments and the return of the principal at maturity. Bonds are generally considered less risky than stocks but come with their own set of challenges, such as interest rate risk.

**3. Mutual Funds: Pooled Investments:**
Mutual funds pool money from multiple investors to invest in a diversified portfolio of stocks, bonds, or other securities. This provides investors with instant diversification and professional management. However, fees and expenses can impact returns.

**4. Exchange-Traded Funds (ETFs): Market-Traded Diversification:**
ETFs are similar to mutual funds but are traded on stock exchanges like individual stocks. They offer diversification and liquidity, often with lower fees than traditional mutual funds. ETFs can track various indices or be actively managed.

**5. Real Estate Investments: Tangible Assets:**
Real estate investments involve owning physical properties or investing in real estate investment trusts (REITs). Real estate provides the potential for both rental income and property value appreciation, making it a popular choice for diversification.

**6. Commodities: Tangible Goods Investment:**
Investing in commodities involves buying physical goods like gold, silver, oil, or agricultural products. Commodities can act as a hedge against inflation and offer diversification, but their prices can be influenced by global economic factors.

**7. Options and Derivatives: Risk Management Tools:**
Options and derivatives are financial instruments derived from underlying assets. They are often used for risk management and speculative purposes. However, they require a deep understanding and can involve complex strategies.

**Understanding Risk and Return:**
Each investment type comes with its own level of risk and potential return. Investors must carefully assess their risk tolerance, investment goals, and time horizon when building a diversified portfolio.

As we explore these investment types, consider how each aligns with your financial objectives. Building a well-balanced portfolio involves understanding the characteristics of each investment and tailoring your choices to match your unique financial situation and goals. Let's continue our journey into the realm of finance and investments!
"""), LessonLearn(title: "Risk and Return", duration: "6 min", text: """
- Understanding the risk-return tradeoff in investing.
- Analyzing the impact of diversification on risk.
- Practical examples of calculating and managing risk in a portfolio.

Welcome to Lesson 3 of our course, \"Fundamentals of Finance and Investments for Beginners.\" In this module, we will explore the dynamic interplay between risk and return, essential elements that shape investment strategies and outcomes.

**Understanding the Risk-Return Relationship:**
Investing is inherently a trade-off between risk and return. To make informed decisions, investors must grasp the intricate relationship between these two factors, recognizing that seeking higher returns often involves taking on greater risks.

**1. The Foundation: Risk-Return Tradeoff:**
At the heart of every investment decision lies the risk-return tradeoff. This principle suggests that the potential return on an investment is directly linked to the level of risk associated with it. Investors face choices where the pursuit of higher returns typically requires a willingness to accept a commensurate level of risk.

**2. Types of Investment Risk:**

- **Market Risk:** Stemming from fluctuations in overall market conditions, impacting all investments.
- **Credit Risk:** Tied to the potential for issuers to default on their debt obligations.
- **Interest Rate Risk:** Arising from the impact of changing interest rates, particularly affecting fixed-income securities.
- **Liquidity Risk:** Involving the ability to buy or sell an investment quickly at a fair price.
- **Inflation Risk:** Centered on the potential erosion of purchasing power over time due to inflation.

**3. Assessing Risk Tolerance:**
Understanding one's risk tolerance is a critical step in navigating the risk-return landscape. Risk tolerance is an individual's ability to endure the potential ups and downs of the market without abandoning their investment strategy. It is influenced by factors such as financial goals, time horizon, and personal comfort with volatility.

**4. Expected Return:**
Expected return is the anticipated gain or loss from an investment based on historical performance, analysis, and market conditions. It provides investors with a benchmark for evaluating whether the potential returns align with their financial objectives.

**5. Diversification as a Risk Management Strategy:**
Diversification, the practice of spreading investments across different asset classes, can be a powerful tool in managing risk. By holding a mix of assets with non-correlated or negatively correlated returns, investors aim to minimize the impact of poor performance in any single investment.

**6. Balancing Risk and Return in Your Portfolio:**
Constructing a well-balanced portfolio involves aligning the level of risk with your financial goals and risk tolerance. Different asset classes, such as stocks, bonds, and cash equivalents, carry varying degrees of risk, and finding the right combination is key to optimizing your risk-return profile.

As we navigate through this lesson, remember that risk and return are intertwined aspects of the investment landscape. Developing a nuanced understanding of these concepts empowers you to make informed decisions that align with your financial aspirations. Let's continue our exploration into the fascinating world of finance and investments.
"""), LessonLearn(title: "Developing Investment Goals and Strategies", duration: "5 min", text: """
- Defining personal financial goals and aligning them with investment objectives.
- Developing a long-term investment strategy.
- Setting realistic expectations for returns and growth.

Welcome to Lesson 4 of our course, \"Fundamentals of Finance and Investments for Beginners.\" In this module, we will explore the crucial steps of defining investment goals and developing effective strategies to achieve them.

**1. Understanding Investment Goals:**
Before embarking on your investment journey, it's essential to clearly define your investment goals. These goals serve as the foundation for your entire investment strategy, guiding your decisions and shaping the path toward financial success.

**2. Types of Investment Goals:**

- **Wealth Accumulation:** Building a nest egg for major life events, such as buying a home, funding education, or ensuring a comfortable retirement.
- **Income Generation:** Creating a steady stream of income through investments, particularly important during retirement.
- **Capital Preservation:** Protecting your capital from significant losses, suitable for investors with a lower risk tolerance.
- **Speculative Growth:** Seeking high returns through riskier investments with the potential for substantial capital appreciation.

**3. Aligning Goals with Investment Horizon:**
The investment horizon, or the length of time you intend to hold your investments, plays a crucial role in goal setting. Short-term goals, like saving for a vacation, may require more conservative strategies, while long-term goals, such as retirement, allow for a more growth-oriented approach.

**4. Risk Tolerance and Investment Goals:**
Your risk tolerance, the ability to withstand market fluctuations, should align with your investment goals. Aggressive goals may require a higher tolerance for risk, while conservative goals may prioritize capital preservation over high returns.

**5. Developing a Long-Term Investment Strategy:**
Successful investing is often a marathon, not a sprint. Crafting a long-term investment strategy involves selecting a mix of assets that align with your goals, risk tolerance, and time horizon. Diversification, a key strategy, helps spread risk across different investments.

**6. Regular Review and Adjustments:**
As life evolves, so should your investment strategy. Regularly review your goals and portfolio to ensure they remain aligned. Life events, changes in risk tolerance, and market conditions may necessitate adjustments to your investment approach.

**7. Setting Realistic Expectations:**
It's crucial to set realistic expectations for returns. Investments inherently involve some level of risk, and understanding that markets can fluctuate over time helps you stay committed to your long-term goals.

**8. The Importance of Consistency:**
Consistency is a cornerstone of successful investing. Stay disciplined in contributing to your portfolio regularly, even during market downturns. Consistent contributions can harness the power of compounding over time.

As we delve into developing investment goals and strategies, remember that your unique financial situation and aspirations will shape these decisions. By understanding your goals, time horizon, and risk tolerance, you lay the groundwork for a resilient and purposeful investment strategy. Let's continue building the knowledge base for your journey into the world of finance and investments.
"""), LessonLearn(title: "Introduction to Stock Market", duration: "4 min", text: """
- Basics of buying and selling stocks.
- Analyzing stock prices and company performance.
- Overview of stock market indices and their significance.

Welcome to Lesson 5 of our course, \"Fundamentals of Finance and Investments for Beginners.\" In this module, we will embark on an exciting exploration into the world of the stock market, a dynamic arena where investors buy and sell ownership in companies, and fortunes rise and fall with the ebb and flow of market forces.

**1. The Role of the Stock Market:**
The stock market serves as a vital hub of economic activity, enabling the buying and selling of ownership shares in publicly traded companies. Investors, ranging from individuals to institutional entities, come together to trade these shares, shaping the market's daily rhythms.

**2. Basics of Buying and Selling Stocks:**
Investing in stocks involves purchasing shares of a company, making you a partial owner. The process begins with selecting stocks based on thorough research and analysis. When ready, you place buy orders through a brokerage platform, and the transaction is executed on the stock exchange.

**3. Understanding Stock Prices:**
Stock prices are determined by the forces of supply and demand in the market. Factors such as a company's financial performance, economic conditions, and investor sentiment influence these prices. Traders analyze these factors to make informed decisions about buying or selling stocks.

**4. Stock Market Indices:**
Stock market indices, like the S&P 500 and Dow Jones Industrial Average, serve as benchmarks for the overall performance of the market. They represent the aggregated value of a specific group of stocks, providing investors with insights into the market's general direction.

**5. Bull and Bear Markets:**
Market conditions often fall into two categories: bull and bear markets. A bull market is characterized by rising prices and positive investor sentiment, while a bear market sees declining prices and increased pessimism. Understanding these cycles helps investors navigate market trends.

**6. Initial Public Offerings (IPOs):**
Companies often go public through an Initial Public Offering (IPO), issuing shares to the public for the first time. IPOs can present exciting opportunities for investors but also come with risks, as the market determines the initial valuation of the company.

**7. Stock Market Order Types:**
When executing trades, investors can use various order types, including market orders, limit orders, and stop orders. Each order type serves a specific purpose, allowing investors to control the price at which they buy or sell stocks.

**8. Risks and Rewards of Stock Investing:**
While stocks offer the potential for high returns, they also come with inherent risks. Market volatility, economic downturns, and individual company performance can impact stock prices. Diversification and thorough research are essential tools for managing these risks.

As we venture into the stock market, remember that it is a dynamic and ever-changing environment. Whether you're a seasoned investor or a beginner, understanding the basics is crucial for making informed decisions. Let's dive into the exciting realm of stock investing!
"""), LessonLearn(title: "Bonds and Fixed Income", duration: "6 min", text: """
- Exploring the bond market and its different segments.
- Understanding bond yields and their relationship with interest rates.
- Constructing a balanced portfolio with fixed-income securities.

Welcome to Lesson 6 of our course, \"Fundamentals of Finance and Investments for Beginners.\" In this module, we will unravel the intricacies of bonds and fixed income securities, essential components of the investment landscape known for their income-generating characteristics and capital preservation attributes.

**1. Bonds: A Debt Instrument:**
Bonds are debt securities representing loans made by investors to issuers, typically governments, municipalities, or corporations. When you invest in a bond, you are essentially lending money to the issuer in exchange for periodic interest payments and the return of the principal amount at maturity.

**2. Understanding Bond Characteristics:**

- **Face Value:** The principal amount the issuer promises to repay at maturity.
- **Coupon Rate:** The fixed annual interest rate paid to bondholders, expressed as a percentage of the face value.
- **Maturity Date:** The date when the bond reaches the end of its term, and the principal is repaid.

**3. Types of Bonds:**

- **Government Bonds:** Issued by governments to raise funds for public projects. Examples include U.S. Treasury Bonds.
- **Corporate Bonds:** Issued by corporations to fund business activities. Corporate bonds carry varying levels of risk based on the issuing company's creditworthiness.
- **Municipal Bonds:** Issued by local governments to fund infrastructure projects. Municipal bonds often offer tax advantages.

**4. Yield and Price Relationships:**
The yield of a bond is influenced by its price in the secondary market. As bond prices fluctuate, the yield – calculated as the annual interest payments divided by the bond's current price – adjusts accordingly. Understanding this relationship is crucial for investors evaluating fixed income investments.

**5. Interest Rate Risk:**
Bonds are sensitive to changes in interest rates. When interest rates rise, existing bond prices tend to fall, and vice versa. Investors need to be aware of interest rate risk and its potential impact on the value of their fixed income portfolio.

**6. Bond Rating Agencies:**
Bond rating agencies assess the creditworthiness of issuers and assign ratings to bonds. Common agencies include Moody's, Standard & Poor's, and Fitch. Higher-rated bonds are considered lower risk but may offer lower yields.

**7. Fixed Income Strategies:**
Fixed income securities play a crucial role in diversifying investment portfolios and providing a reliable income stream. Investors often use fixed income investments to balance the risk-return profile of their overall portfolio.

**8. Bond Laddering:**
Bond laddering involves building a diversified bond portfolio with staggered maturities. This strategy helps manage interest rate risk while providing a regular income stream as bonds mature.

**9. Risks and Rewards of Fixed Income Investing:**
While fixed income securities are generally considered less risky than stocks, they come with their own set of considerations. Investors must weigh potential risks, such as credit risk and interest rate risk, against the reliable income and capital preservation attributes offered by bonds.

As we explore the realm of bonds and fixed income, remember that these investments provide valuable tools for investors seeking income and stability in their portfolios. Whether you are a conservative investor or looking to diversify, understanding the nuances of fixed income securities is a key step in crafting a well-rounded investment strategy. Let's continue our journey into the world of finance and investments!
""")
]), LessonLearnTopic(name: "Choosing the right investment portfolio", description: """
    What You Will Learn in This Course:
Welcome to the comprehensive course on \"Choosing the Right Investment Portfolio for Beginners.\" In this extensive program tailored for the American audience, you will acquire the knowledge and skills necessary to navigate the complex world of investment portfolios. From understanding your financial goals to constructing a diversified and well-balanced portfolio, this course will empower you to make informed decisions on your path to financial success.
""", lessons: [
    LessonLearn(title: "Setting Clear Objectives", duration: "8 min", text: """
- Learn how to define and articulate your financial goals.
- Understand the different types of financial objectives, from short-term needs to long-term aspirations.
- Explore the relationship between your goals and your investment strategy.

Welcome to Lesson 1 of our course, \"Choosing the Right Investment Portfolio for Beginners.\" In this module, we will delve into the crucial process of setting clear financial objectives. Understanding and defining your goals is the foundational step towards constructing a purposeful and effective investment strategy.

**1. The Importance of Setting Financial Goals:**
Financial goals serve as the guiding stars of your investment journey. They provide direction, purpose, and a roadmap for making informed decisions. Whether it's saving for a dream vacation, funding education, or securing a comfortable retirement, your goals shape the entire landscape of your investment strategy.

**2. Differentiating Between Short-Term and Long-Term Objectives:**
In this lesson, we will explore the distinction between short-term and long-term financial objectives. Short-term goals, such as creating an emergency fund or saving for a down payment, often require more conservative investment approaches. Long-term goals, like retirement planning, provide more flexibility for growth-oriented strategies.

**3. Crafting Specific and Measurable Goals:**
Clear and specific goals are the cornerstone of effective financial planning. Learn how to articulate your objectives in a way that is both specific and measurable. Whether it's a target amount for retirement or a specific timeframe for a major purchase, precise goals empower you to track progress and adjust strategies accordingly.

**4. Aligning Goals with Your Values:**
Your values play a significant role in shaping your financial objectives. In this lesson, we'll explore how aligning your goals with your values leads to a more meaningful and fulfilling investment journey. Understanding the intrinsic motivations behind your financial aspirations enhances your commitment to the investment process.

**5. Setting Realistic Expectations:**
Setting realistic expectations is crucial for maintaining focus and discipline. We'll discuss the importance of aligning expectations with market realities, considering factors such as historical market performance, economic conditions, and your risk tolerance. Realistic expectations form the basis for a resilient and adaptable investment strategy.

**6. Balancing Short-Term Enjoyment and Long-Term Security:**
Finding the balance between enjoying the present and securing the future is a common challenge. This lesson explores strategies for allocating resources to both short-term pleasures and long-term financial security. Balancing immediate gratification with future planning is a key aspect of holistic financial goal-setting.

**7. The Impact of Life Changes on Goals:**
Life is dynamic, and so are your goals. We'll discuss how major life events, such as marriage, parenthood, or career changes, can impact your financial objectives. Understanding the adaptability of your goals ensures that your investment strategy evolves in harmony with your changing circumstances.

**8. Creating a Personalized Goal Hierarchy:**
Not all goals are created equal. In this lesson, we'll guide you through creating a personalized hierarchy for your financial objectives. Prioritizing goals helps you allocate resources effectively, focusing on what matters most at each stage of your life.

As we embark on this journey of goal-setting, remember that your financial objectives are as unique as you are. This lesson will equip you with the skills to articulate, prioritize, and align your goals with a tailored investment strategy. Let's move forward in constructing a portfolio that reflects your aspirations and paves the way to financial success.
"""), LessonLearn(title: "Aligning Goals with Time Horizons", duration: "8 min", text: """
- Gain insights into how the time horizon for your goals impacts your investment approach.
- Understand the significance of short-term and long-term goals in portfolio construction.
- Explore real-life scenarios to determine appropriate timeframes for different goals.

Welcome to Lesson 2 of our course, \"Choosing the Right Investment Portfolio for Beginners.\" In this module, we will delve into the critical aspect of aligning your financial goals with appropriate time horizons. Understanding the time dimension of your objectives is essential for constructing an investment strategy that suits your unique needs.

**1. The Significance of Time Horizons:**
Time is a defining factor in the world of investments. The duration over which you plan to achieve your financial goals significantly influences the risk and return profile of your investment strategy. This lesson will underscore the importance of considering time horizons as a fundamental component of your financial planning.

**2. Short-Term vs. Long-Term Objectives:**
Distinguish between short-term and long-term financial goals and the corresponding time horizons. Short-term goals may include building an emergency fund, purchasing a car, or saving for a down payment, while long-term goals typically involve major life events like education funding, homeownership, or retirement planning.

**3. Strategies for Short-Term Goals:**
For short-term objectives, a more conservative approach may be appropriate to safeguard your principal. We'll explore investment options that balance the need for liquidity and stability, minimizing exposure to market volatility while meeting short-term financial needs.

**4. Growth-Oriented Strategies for Long-Term Goals:**
Long-term goals, such as retirement planning, allow for a more growth-oriented investment strategy. We'll discuss the benefits of harnessing the power of compounding over an extended period, exploring investment vehicles with higher growth potential while acknowledging the accompanying risks.

**5. Adapting Strategies as Goals Evolve:**
Goals aren't static; they evolve over time. Learn how to adapt your investment strategy as your goals change, ensuring that your portfolio remains aligned with your current financial aspirations. Flexibility is a key attribute of successful long-term financial planning.

**6. Balancing Multiple Time Horizons:**
Many individuals have a mix of short-term and long-term goals. We'll delve into strategies for balancing multiple time horizons within a single investment portfolio. Understanding how various goals interact allows for a holistic approach to financial planning.

**7. The Role of Life Stages in Goal Alignment:**
Different life stages bring unique financial considerations. Explore how aligning your goals with specific life stages enhances the effectiveness of your financial plan. Whether you're just starting your career, raising a family, or approaching retirement, your investment strategy should adapt to your current life stage.

**8. Risk Management Across Time Horizons:**
Risk management is a crucial aspect of aligning goals with time horizons. We'll discuss how your risk tolerance may vary based on the time sensitivity of your objectives and explore strategies for mitigating risk while maximizing potential returns over different timeframes.

As we delve into aligning your financial goals with appropriate time horizons, remember that this process is dynamic and responsive to your evolving needs. By the end of this lesson, you'll be equipped with the knowledge to synchronize your investment strategy with the temporal aspects of your unique financial journey. Let's continue our exploration into crafting a well-balanced and purposeful investment portfolio.
"""), LessonLearn(title: "Understanding Risk in Investments", duration: "10 min", text: """
- Define the concept of risk in the context of investments.
- Explore the various types of investment risks, including market risk, credit risk, and liquidity risk.
- Learn how risk tolerance influences investment decisions.

Welcome to Lesson 3 of our course, \"Choosing the Right Investment Portfolio for Beginners.\" In this module, we will explore the fundamental concept of risk in investments. Understanding the various types of risks is essential for making informed decisions and constructing a resilient investment strategy.

**1. Defining Risk in Investments:**
Risk, in the context of investments, refers to the uncertainty and potential for financial loss. This lesson will provide a comprehensive definition of risk, emphasizing its dynamic nature in the ever-changing landscape of financial markets.

**2. Types of Investment Risks:**

*a. Market Risk:*

- Arises from fluctuations in overall market conditions.
- Impacts the value of all investments to some extent.
- Understanding market risk is crucial for navigating the broader economic forces that influence investment performance.

*b. Credit Risk:*

- Associated with the potential for issuers, such as corporations or governments, to default on their debt obligations.
- Varies based on the creditworthiness of the issuer.
- Investors must assess and manage credit risk when considering fixed-income securities.

*c. Interest Rate Risk:*

- Relates to the impact of changing interest rates on the value of fixed-income securities.
- Bond prices tend to move inversely to interest rates.
- Investors need to consider interest rate risk when holding bonds in their portfolios.

*d. Liquidity Risk:*

- Involves the risk of not being able to buy or sell an investment quickly at a fair price.
- Less liquid assets may experience wider bid-ask spreads and increased price volatility.
- Liquidity risk is a crucial consideration, especially during market fluctuations.

*e. Inflation Risk:*

- The risk that the purchasing power of money will decline over time due to inflation.
- Investments that do not outpace inflation may result in a reduction in real wealth.
- Investors must assess inflation risk to preserve and grow their purchasing power.

**3. Risk Tolerance:**
Understanding your risk tolerance is a key aspect of navigating the complexities of investment risk. This lesson will guide you through assessing your comfort level with risk, taking into account factors such as financial goals, time horizon, and personal preferences.

**4. The Psychological Aspect of Risk:**
Investors often face psychological challenges when dealing with risk. Emotions such as fear and greed can impact decision-making. This lesson explores the psychological aspects of risk and strategies for maintaining a rational and disciplined approach to investments.

**5. Risk-Return Tradeoff:**
The risk-return tradeoff is a fundamental principle in investing. This lesson will delve into how the potential return on an investment is directly correlated with the level of risk it carries. Investors must carefully balance their desire for returns with their willingness to accept risk.

**6. Diversification as a Risk Management Tool:**
Diversification involves spreading investments across different assets to reduce risk. This lesson will highlight the benefits of diversification in managing portfolio risk and provide practical insights into creating a well-diversified investment portfolio.

**7. Risk Management Strategies:**
Explore various risk management strategies that investors can employ. From setting stop-loss orders to using hedging techniques, understanding these strategies will empower you to proactively manage and mitigate risks in your investment portfolio.

As we navigate through this lesson on understanding risk in investments, remember that risk is an inherent part of the investment landscape. By gaining a comprehensive understanding of the types of risks and implementing effective risk management strategies, you'll be better equipped to make informed decisions on your journey to building a successful investment portfolio. Let's continue our exploration into the world of finance and investments.
"""), LessonLearn(title: "Evaluating Your Risk Tolerance", duration: "12 min", text: """
- Assess your personal risk tolerance using practical exercises.
- Understand the psychological aspects of risk and how emotions can impact investment choices.
- Determine the level of risk that aligns with your comfort and financial goals.

Welcome to Lesson 4 of our course, \"Choosing the Right Investment Portfolio for Beginners.\" In this module, we will focus on a crucial aspect of successful investing – understanding and evaluating your risk tolerance. Your risk tolerance is a key factor that shapes your investment decisions and helps you build a portfolio aligned with your financial goals.

**1. Defining Risk Tolerance:**
Risk tolerance is your ability and willingness to endure the uncertainties and potential volatility associated with investing. This lesson will delve into the components of risk tolerance, considering both the financial and emotional aspects that influence your capacity to withstand market fluctuations.

**2. Financial Factors Impacting Risk Tolerance:**

*a. Financial Goals:*

- The nature of your financial goals plays a significant role in determining your risk tolerance.
- Short-term goals may require a more conservative approach, while long-term goals may allow for a higher tolerance for risk.

*b. Time Horizon:*

- Your time horizon, or the length of time you plan to hold investments, influences your risk tolerance.
- Longer time horizons often provide more flexibility for recovering from short-term market fluctuations.

*c. Liquidity Needs:*

- Consideration of your liquidity needs is essential for evaluating risk tolerance.
- Having readily available funds for emergencies or short-term goals may impact your ability to take on higher-risk investments.

**3. Psychological Factors Impacting Risk Tolerance:**

*a. Understanding Emotions:*

- Emotions such as fear and greed can influence investment decisions.
- This lesson explores how emotional reactions impact risk tolerance and provides strategies for maintaining a disciplined approach.

*b. Risk Perception:*

- Perception of risk varies among individuals.
- Recognizing how you perceive risk – as a threat or an opportunity – is crucial for assessing your overall risk tolerance.

**4. Risk Tolerance Questionnaires:**
Risk tolerance questionnaires are tools designed to assess your comfort level with risk. This lesson will guide you through common questions used in these assessments, helping you gain a clearer understanding of your risk tolerance profile.

**5. The Importance of Honesty and Self-Reflection:**
Being honest with yourself about your financial situation, goals, and emotional responses to risk is paramount. This lesson emphasizes the significance of self-reflection in accurately evaluating your risk tolerance.

**6. Adjusting Risk Tolerance Over Time:**
Risk tolerance is not static; it can evolve over time. Life events, changes in financial circumstances, and personal experiences may influence your risk tolerance. Learn how to adapt your investment strategy in response to these changes.

**7. Seeking Professional Advice:**
Consideration of seeking professional advice is crucial in the risk evaluation process. Financial advisors can provide valuable insights, helping you align your risk tolerance with appropriate investment strategies.

**8. Building a Risk-Adjusted Portfolio:**
Armed with a clear understanding of your risk tolerance, you can now focus on constructing a risk-adjusted portfolio. This lesson introduces the concept of building a portfolio that balances risk and return based on your individual risk tolerance.

By the end of this lesson, you will have the tools and knowledge to evaluate your risk tolerance accurately. Recognizing your capacity for risk is a foundational step toward constructing an investment portfolio that aligns with your financial aspirations. Let's continue our journey into the intricacies of building a successful investment strategy.
"""), LessonLearn(title: "Introduction to Portfolio Types", duration: "10 min", text: """
- Explore different portfolio types, including conservative, balanced, and aggressive portfolios.
- Understand the principles behind each portfolio type and their risk-return profiles.
- Assess which portfolio type aligns best with your financial goals and risk tolerance.

Welcome to Lesson 5 of our course, \"Choosing the Right Investment Portfolio for Beginners.\" In this module, we will embark on an exploration of different portfolio types, each designed to meet specific financial goals and risk tolerance levels. Understanding these portfolio types is crucial for tailoring your investments to align with your unique needs.

**1. The Role of Portfolio Types:**
A portfolio is a collection of investments held by an individual or institution. Each portfolio type is crafted with a specific investment strategy in mind. This lesson will provide a comprehensive overview of various portfolio types and their distinct characteristics.

**2. Conservative Portfolio:**
A conservative portfolio is designed to prioritize capital preservation and stability. This lesson will explore the components of a conservative portfolio, which typically includes low-risk assets such as cash, high-quality bonds, and stable dividend-paying stocks. Conservative portfolios are suitable for investors with a low risk tolerance and a focus on safeguarding their principal.

**3. Balanced Portfolio:**
A balanced portfolio strikes a middle ground between risk and return. This lesson will delve into how a balanced portfolio typically includes a mix of both equities and fixed-income securities. This approach aims to provide moderate growth potential while managing risk. Balanced portfolios suit investors seeking a combination of capital appreciation and income.

**4. Aggressive Portfolio:**
An aggressive portfolio is geared towards maximizing capital growth. In this lesson, we will explore how an aggressive portfolio often includes a higher allocation to stocks, which historically have the potential for higher returns but also come with increased volatility. Aggressive portfolios are suitable for investors with a higher risk tolerance and a long-term investment horizon.

**5. Income Portfolio:**
An income portfolio focuses on generating a steady stream of income. This lesson will discuss how income portfolios commonly include interest-bearing securities like bonds, dividend-paying stocks, and other income-generating assets. Such portfolios are suitable for investors seeking regular cash flow, particularly during retirement.

**6. Growth Portfolio:**
A growth portfolio emphasizes capital appreciation over income generation. This lesson will highlight how growth portfolios typically have a higher allocation to stocks, with a focus on companies poised for above-average growth. Growth portfolios are suitable for investors with a longer time horizon and a tolerance for market fluctuations.

**7. Specialized Portfolios:**
Beyond the traditional types, specialized portfolios cater to specific investment themes or objectives. This lesson will touch on thematic portfolios, sector-specific portfolios, and other specialized approaches that allow investors to align their investments with specific areas of interest or expertise.

**8. Constructing a Customized Portfolio:**
As we conclude this lesson, you will gain insights into how investors often customize their portfolios by combining elements from different types. Understanding your financial goals and risk tolerance will guide you in constructing a portfolio that suits your individual needs, whether it's conservative, balanced, aggressive, income-focused, growth-oriented, or a unique blend tailored to your preferences.

By the end of this lesson, you will have a solid understanding of different portfolio types, empowering you to make informed decisions when selecting the one that aligns best with your financial objectives and risk tolerance. Let's continue our journey into the diverse world of investment portfolios.
"""), LessonLearn(title: "Building a Diversified Portfolio", duration: "15 min", text: """
- Learn the importance of diversification in risk management.
- Understand how to spread investments across asset classes, industries, and geographic regions.
- Explore strategies for building a well-diversified and resilient portfolio.

Welcome to Lesson 6 of our course, \"Choosing the Right Investment Portfolio for Beginners.\" In this module, we will explore the importance of diversification and guide you through the process of building a well-diversified investment portfolio. Diversification is a key strategy to manage risk and enhance the resilience of your overall investment strategy.

**1. Understanding Diversification:**
Diversification is the practice of spreading your investments across different asset classes, industries, and geographic regions. The goal is to reduce the impact of a poor-performing investment on your overall portfolio while capturing the potential benefits of various market segments.

**2. Benefits of Diversification:**

- *Risk Reduction:* Diversification helps mitigate the impact of a poor-performing asset by balancing it with better-performing ones.
- *Stability:* A diversified portfolio is generally more stable over time, as it is not overly dependent on the performance of a single asset or market segment.
- *Enhanced Return Potential:* Diversification allows investors to tap into different sources of return, potentially enhancing the overall performance of the portfolio.

**3. Asset Classes for Diversification:**

*a. Equities (Stocks):*

- Equities represent ownership in companies and offer the potential for capital appreciation. A diversified stock portfolio may include large-cap, mid-cap, and small-cap stocks.

*b. Fixed-Income (Bonds):*

- Bonds provide income through interest payments and can add stability to a portfolio. Diversifying bond holdings by maturity, credit quality, and types (government, corporate, municipal) is crucial.

*c. Cash and Cash Equivalents:*

- Cash and equivalents, such as money market funds, provide liquidity and stability. They serve as a buffer during market downturns and can be part of a diversified portfolio.

*d. Alternative Investments:*

- Alternative investments, like real estate and commodities, offer additional diversification. These assets may have a low correlation with traditional stocks and bonds.

**4. Geographic and Sector Diversification:**

- *Geographic Diversification:* Spreading investments across different countries and regions can reduce exposure to economic and geopolitical risks associated with a specific location.
- *Sector Diversification:* Investing in various sectors, such as technology, healthcare, and finance, helps avoid overconcentration in a single industry.

**5. Rebalancing Your Portfolio:**
Regularly rebalancing your portfolio is crucial to maintaining diversification. This involves adjusting your asset allocation to bring it back in line with your target percentages. Rebalancing ensures that your portfolio remains aligned with your risk tolerance and financial goals.

**6. Risk and Return Considerations:**
While diversification can reduce risk, it also impacts potential returns. This lesson will explore the balance between risk and return and how investors can tailor their diversification strategy based on their risk tolerance and return objectives.

**7. Monitoring and Adjusting:**
Monitoring your portfolio's performance is an ongoing process. This lesson will guide you on how to assess the effectiveness of your diversification strategy and make adjustments as needed. Economic conditions, market trends, and changes in your financial situation may warrant modifications to your portfolio.

**8. Building a Personalized Diversification Plan:**
As we conclude this lesson, you will be equipped to create a personalized diversification plan based on your financial goals, risk tolerance, and investment horizon. A well-diversified portfolio lays the foundation for a resilient and adaptive investment strategy.

By the end of this lesson, you will understand the principles of diversification and possess the skills to construct a portfolio that effectively spreads risk while maximizing the potential for returns. Let's continue our journey into the art and science of building a successful investment portfolio.
""")]),
    LessonLearnTopic(name: "Stocks and stock market", description: """
   What You Will Learn in This Course:
Welcome to the comprehensive course on \"Understanding Stocks and the Stock Market for Beginners.\" In this extensive program tailored for the American audience, you will embark on a journey to demystify the world of stocks, equipping yourself with the knowledge and skills to confidently navigate the dynamic landscape of the stock market.
""", lessons: [
    LessonLearn(title: "What Are Stocks?", duration: "8 min", text: """
- Explore the fundamental concept of stocks as ownership shares in a company.
- Understand the rights and privileges that come with stock ownership.
- Learn about common and preferred stocks and their distinctions.

Welcome to Lesson 1 of our course, \"Understanding Stocks and the Stock Market for Beginners.\" In this foundational lesson, we will unravel the concept of stocks, providing you with a clear understanding of what stocks are and their pivotal role in the financial markets.

**1. Definition of Stocks:**
At its core, a stock represents ownership in a company. When you own a stock, you become a shareholder or equity holder, making you a part-owner of the company. This lesson will delve into the significance of this ownership, giving you insights into the rights and privileges associated with being a shareholder.

**2. Common vs. Preferred Stocks:**
Stocks come in different forms, with common and preferred stocks being the primary categories. We will explore the distinctions between these two types, examining the voting rights, dividend preferences, and risk profiles associated with each. Understanding these differences is crucial for making informed investment decisions.

**3. The Role of Stocks in Financing Companies:**
Companies issue stocks as a means of raising capital. Whether for expanding operations, investing in new projects, or paying off debt, issuing stocks allows companies to access funding from the public. This lesson will shed light on how the stock market serves as a dynamic platform for companies to raise the necessary funds for growth and development.

**4. Stock Exchanges and Trading:**
Stocks are bought and sold on stock exchanges, which serve as organized markets for trading securities. We will explore major U.S. stock exchanges, including the New York Stock Exchange (NYSE) and the NASDAQ, understanding their functions and the mechanisms behind stock trading.

**5. Owning a Share of the Company:**
When you own a stock, you have a claim on the company's assets and earnings. This lesson will clarify the concept of shareholders' equity and how owning stocks entitles you to a portion of the company's profits. Additionally, we will discuss the potential for capital appreciation as the company grows and prospers.

**6. Stock Prices and Market Capitalization:**
Stock prices fluctuate based on market demand and supply dynamics. We will explore how stock prices are determined and the concept of market capitalization – the total value of a company's outstanding shares. Understanding these factors is essential for assessing the relative size and valuation of a company.

**7. Risks and Rewards of Stock Ownership:**
Owning stocks comes with both risks and rewards. This lesson will provide insights into the potential for capital gains, dividends, and the role of stocks in a diversified investment portfolio. We will also discuss the inherent risks, such as market volatility and the possibility of financial loss, associated with stock ownership.

**8. Conclusion: Embracing the Ownership Experience:**
As we conclude this lesson, you will have gained a foundational understanding of what stocks are and the role they play in the financial ecosystem. Whether you aspire to be a long-term investor or engage in active trading, recognizing the power and responsibility that comes with owning stocks is the first step in your journey into the exciting world of stock investing.

Stay engaged and curious as we proceed on this educational adventure. In the upcoming lessons, we will delve deeper into stock valuation, investment strategies, and the intricacies of the stock market. Let's continue building your knowledge and confidence in navigating the realm of stocks!
"""), LessonLearn(title: "The Role of Stock Exchanges", duration: "10 min", text: """
- Delve into the function of stock exchanges as the platforms for buying and selling stocks.
- Explore major U.S. stock exchanges, including the NYSE and NASDAQ.
- Understand the mechanics of stock trading on these exchanges.

Welcome to Lesson 2 of our course, \"Understanding Stocks and the Stock Market for Beginners.\" In this lesson, we will unravel the crucial role played by stock exchanges in the functioning of financial markets, serving as the central hubs for buying and selling stocks.

**1. Definition of Stock Exchanges:**
Stock exchanges are organized markets where securities, including stocks, are bought and sold. These exchanges provide the infrastructure and framework for transparent and efficient trading, connecting buyers and sellers in a regulated environment.

**2. Major U.S. Stock Exchanges:**
In the United States, two of the most prominent stock exchanges are the New York Stock Exchange (NYSE) and the NASDAQ. We will explore the distinctive features of each exchange, understanding their histories, operational differences, and the types of companies typically listed on each.

**3. Functions of Stock Exchanges:**

*a. Facilitating Trading:*

- Stock exchanges facilitate the buying and selling of stocks, allowing investors to execute transactions in a centralized and standardized manner.
- Trading on exchanges ensures transparency and fair pricing through an auction system.

*b. Listing and Initial Public Offerings (IPOs):*

- Companies seeking to go public undergo a process of listing on a stock exchange.
- The lesson will delve into how stock exchanges enable Initial Public Offerings (IPOs), allowing companies to raise capital by issuing shares to the public.

*c. Providing Market Information:*

- Stock exchanges disseminate real-time market information, including stock prices, trading volumes, and other relevant data.
- Investors rely on this information to make informed decisions, and it contributes to the overall transparency of the financial markets.

**4. Market Participants:**
Various participants engage in trading on stock exchanges, including individual investors, institutional investors, market makers, and brokers. Understanding the roles of these participants is crucial for comprehending the dynamics of stock market transactions.

**5. Trading Mechanisms:**
Stock exchanges employ specific trading mechanisms to ensure orderly and efficient markets. This lesson will introduce concepts such as bid and ask prices, market orders, and limit orders, providing you with a comprehensive understanding of how trading occurs on exchanges.

**6. Market Regulation and Oversight:**
Stock exchanges are subject to regulatory oversight to maintain fairness and integrity in the markets. Regulatory bodies, such as the Securities and Exchange Commission (SEC), play a pivotal role in monitoring exchanges and ensuring compliance with securities laws.

**7. Electronic Trading and Technological Advancements:**
Advancements in technology have transformed the landscape of stock exchanges. We will explore how electronic trading platforms and algorithmic trading have become integral to modern stock market operations, increasing efficiency and reducing transaction times.

**8. Conclusion: The Heartbeat of Financial Markets:**
As we conclude this lesson, you will have gained a comprehensive understanding of the role stock exchanges play in the financial ecosystem. From providing a marketplace for securities to ensuring transparency and fair trading practices, stock exchanges serve as the heartbeat of global financial markets.

In the upcoming lessons, we will delve deeper into the mechanics of stock trading, the factors influencing stock prices, and the strategies employed by successful investors. Stay engaged and enjoy the journey into the intricate world of stocks and stock market dynamics!
"""), LessonLearn(title: "Market Participants and Terminology", duration: "14 min", text: """
- Identify key players in the stock market, such as investors, traders, and market makers.
- Familiarize yourself with essential stock market terms and acronyms.
- Gain insights into how market dynamics are influenced by different participants.

Welcome to Lesson 3 of our course, \"Understanding Stocks and the Stock Market for Beginners.\" In this lesson, we will dive into the dynamic world of market participants and the essential terminology that shapes the interactions within the stock market.

**1. Individual Investors:**
Individual investors are individuals who buy and sell stocks for personal investment purposes. This lesson will explore the role of individual investors, discussing their motivations, strategies, and the impact of their trading decisions on the market.

**2. Institutional Investors:**
Institutional investors, such as mutual funds, pension funds, and hedge funds, play a significant role in the stock market. We will delve into the unique characteristics of institutional investors, their investment objectives, and their influence on market dynamics.

**3. Market Makers:**
Market makers facilitate trading by providing liquidity to the market. This lesson will explain how market makers quote both buy and sell prices, helping to match buyers with sellers. Understanding the role of market makers is crucial for comprehending the liquidity and efficiency of the stock market.

**4. Brokers:**
Brokers act as intermediaries between buyers and sellers, executing trades on behalf of their clients. This lesson will outline the functions of brokers, including order execution, providing market insights, and offering investment advice.

**5. Bid and Ask Prices:**
Bid and ask prices are fundamental concepts in stock trading. We will explore how the bid price represents the maximum price a buyer is willing to pay, while the ask price is the minimum price a seller is willing to accept. Understanding these prices is essential for making informed trading decisions.

**6. Spread:**
The spread is the difference between the bid and ask prices. This lesson will elucidate how the spread reflects market liquidity and transaction costs. Narrow spreads are generally favorable for investors, while wider spreads may indicate lower liquidity.

**7. Volume:**
Volume represents the total number of shares traded during a specified period. This lesson will discuss the significance of volume in assessing the strength of price movements. High volume often confirms the validity of a price trend, while low volume may suggest a lack of conviction.

**8. Market Orders and Limit Orders:**
Market orders and limit orders are essential order types in stock trading. We will differentiate between market orders, which are executed at the best available price, and limit orders, which are executed at a specific price or better. Understanding these orders empowers investors to control the price at which their trades are executed.

**9. Short Selling:**
Short selling is a strategy where an investor sells borrowed shares with the anticipation of buying them back at a lower price. This lesson will explore the mechanics of short selling, its risks, and its impact on market dynamics.

**10. Bull and Bear Markets:**
Bull markets and bear markets characterize the overall direction of stock prices. We will discuss the traits of bull markets, marked by rising prices and optimism, and bear markets, characterized by falling prices and pessimism. Recognizing market trends is crucial for strategic decision-making.

**11. Conclusion: Navigating the Market Landscape:**
As we conclude this lesson, you will have gained a comprehensive understanding of the diverse participants and essential terminology that define the stock market. Whether you are an individual investor, institutional player, market maker, or broker, each participant contributes to the intricate tapestry of market interactions.

In the upcoming lessons, we will explore the factors influencing stock prices, the mechanics of trading, and the strategies employed by successful market participants. Stay engaged and continue your journey into the fascinating realm of stocks and stock market dynamics!
"""), LessonLearn(title: "Understanding Stock Prices", duration: "12 min", text: """
- Explore the factors influencing stock prices, including supply and demand.
- Learn how economic indicators, company performance, and investor sentiment impact stock valuations.
- Gain insights into reading stock quotes and understanding price movements.

Welcome to Lesson 4 of our course, \"Understanding Stocks and the Stock Market for Beginners.\" In this lesson, we will unravel the intricacies of stock prices, exploring the factors that influence them and gaining insights into the dynamics of price movements.

**1. Basics of Stock Prices:**
At its core, a stock price represents the market's valuation of a company's shares at a given point in time. Understanding how stock prices are determined is fundamental to making informed investment decisions.

**2. Supply and Demand Dynamics:**
Stock prices are influenced by the basic economic principles of supply and demand. This lesson will delve into how the interplay between buyers (demand) and sellers (supply) in the market determines the equilibrium price of a stock.

**3. Economic Indicators and Company Performance:**
External factors, such as economic indicators and the overall health of the economy, can impact stock prices. Additionally, the financial performance of the company itself, reflected in earnings reports, plays a crucial role in shaping investor sentiment and influencing stock valuations.

**4. Investor Sentiment:**
Investor sentiment, or the collective mood of market participants, can have a significant impact on stock prices. This lesson will explore how emotions, news, and perceptions can drive buying or selling behavior, leading to price movements.

**5. Speculation and Market Trends:**
Speculation, or the anticipation of future price movements, is a driving force in the stock market. Understanding how speculation contributes to the formation of market trends is essential for investors seeking to navigate the market landscape.

**6. The Role of Market Analysts:**
Market analysts employ various tools and methodologies to assess stock prices. This lesson will introduce you to the worlds of fundamental analysis and technical analysis, providing insights into how analysts evaluate stocks based on financial data and market trends.

**7. Factors Affecting Stock Valuations:**
Explore the key factors that contribute to stock valuations, including the price-to-earnings (P/E) ratio, earnings per share (EPS), and other financial metrics. Understanding these factors will empower you to assess the relative value of a stock.

**8. Dividends and Yield:**
For certain investors, dividends play a crucial role in the overall return on investment. This lesson will explain how dividends and dividend yield contribute to the attractiveness of a stock, particularly for those seeking income from their investments.

**9. Stock Splits and Corporate Actions:**
Stock prices can be influenced by corporate actions, such as stock splits and mergers. Learn how these events impact the number of shares outstanding and, consequently, the stock's price.

**10. Volatility and Market Fluctuations:**
Stock prices are subject to volatility, with prices fluctuating based on various factors. This lesson will explore the concept of volatility, its measurement, and the implications for investors managing risk in their portfolios.

**11. Conclusion: Navigating the Price Landscape:**
As we conclude this lesson, you will have gained a comprehensive understanding of the multifaceted nature of stock prices. Whether influenced by economic indicators, investor sentiment, or corporate actions, stock prices reflect the dynamic and ever-changing nature of the market.

In the upcoming lessons, we will delve deeper into fundamental and technical analysis, providing you with tools to assess stock prices and make informed investment decisions. Stay engaged as we continue our exploration into the fascinating realm of stocks and stock market dynamics!
"""), LessonLearn(title: "Fundamental Analysis", duration: "18 min", text: """
- Discover the principles of fundamental analysis in evaluating a company's financial health.
- Explore key financial statements such as income statements, balance sheets, and cash flow statements.
- Learn how to use financial ratios to make informed investment decisions.

Welcome to Lesson 5 of our course, \"Understanding Stocks and the Stock Market for Beginners.\" In this lesson, we will dive into the foundational method of evaluating stocks – fundamental analysis. Fundamental analysis involves assessing a company's intrinsic value by examining its financial health, performance, and overall economic standing.

**1. Understanding Fundamental Analysis:**
Fundamental analysis is the process of evaluating a company's financial statements, industry position, and economic indicators to determine its intrinsic value. This lesson will introduce you to the key components of fundamental analysis and its importance in making informed investment decisions.

**2. Financial Statements:**
Financial statements, including the income statement, balance sheet, and cash flow statement, are crucial tools in fundamental analysis. We will explore how these statements provide insights into a company's revenue, expenses, assets, liabilities, and cash flows.

**3. Ratios and Metrics:**
Fundamental analysis involves using various financial ratios and metrics to assess a company's performance and valuation. This lesson will cover essential ratios such as the price-to-earnings (P/E) ratio, earnings per share (EPS), and debt-to-equity ratio. Understanding these metrics is fundamental to evaluating a company's financial health.

**4. Earnings Quality:**
Evaluating the quality of a company's earnings is a critical aspect of fundamental analysis. We will discuss how analysts assess the sustainability of earnings, examining factors such as recurring revenue, profit margins, and the consistency of earnings growth.

**5. Industry and Market Analysis:**
A comprehensive fundamental analysis extends beyond individual companies to include an assessment of the broader industry and market conditions. This lesson will guide you through the importance of understanding the industry in which a company operates and how external factors can impact its performance.

**6. Economic Indicators:**
Economic indicators, such as GDP growth, interest rates, and inflation, play a role in fundamental analysis. We will explore how these macroeconomic factors influence corporate performance and stock prices, helping you consider the broader economic context in your investment decisions.

**7. Management and Corporate Governance:**
The effectiveness of a company's management and its governance structure can significantly impact its success. This lesson will delve into how fundamental analysis assesses the quality of leadership, corporate strategy, and adherence to ethical standards.

**8. Valuation Models:**
Fundamental analysis utilizes various valuation models to estimate a company's intrinsic value. This lesson will introduce you to popular valuation methods, including discounted cash flow (DCF) analysis and comparable company analysis (CCA), providing you with tools to determine whether a stock is undervalued or overvalued.

**9. Risks and Challenges:**
While fundamental analysis provides valuable insights, it comes with its set of challenges and risks. This lesson will explore potential pitfalls, such as accounting discrepancies, unforeseen market changes, and the limitations of financial statements.

**10. Integration with Investment Strategies:**
Fundamental analysis can be seamlessly integrated into various investment strategies, including value investing and growth investing. This lesson will guide you on how to align fundamental analysis with your investment objectives and risk tolerance.

**11. Conclusion: Mastering the Art of Fundamental Analysis:**
As we conclude this lesson, you will have developed a solid understanding of fundamental analysis and its role in assessing the intrinsic value of stocks. Whether you're a long-term investor or a strategic trader, incorporating fundamental analysis into your decision-making process is a powerful tool for navigating the complexities of the stock market.

In the upcoming lessons, we will explore complementary techniques, such as technical analysis, and provide practical insights into applying these methods to real-world investment scenarios. Stay engaged as we continue our exploration into the fascinating world of stock analysis and investment strategies!
"""), LessonLearn(title: "Technical Analysis", duration: "20 min", text: """
- Delve into the basics of technical analysis and chart reading.
- Understand chart patterns, trends, and indicators used by technical analysts.
- Explore how technical analysis complements fundamental analysis in stock evaluation.

Welcome to Lesson 6 of our course, \"Understanding Stocks and the Stock Market for Beginners.\" In this lesson, we will delve into the exciting realm of technical analysis, a method of evaluating stocks and predicting price movements based on historical market data and price charts.

**1. Introduction to Technical Analysis:**
Technical analysis involves studying price charts, trading volumes, and historical patterns to forecast future price movements. Unlike fundamental analysis, which focuses on a company's financial health, technical analysis is more concerned with market psychology and the dynamics of supply and demand.

**2. Candlestick Charts and Price Patterns:**
Candlestick charts are a foundational tool in technical analysis. This lesson will introduce you to candlestick patterns, such as doji, hammer, and engulfing patterns, and how they can signal potential shifts in market sentiment.

**3. Trend Analysis:**
Identifying trends is a core aspect of technical analysis. We will explore how trends, whether upward (bullish), downward (bearish), or sideways, provide valuable insights into the direction of stock prices. Understanding trendlines and channels is crucial for making informed trading decisions.

**4. Support and Resistance:**
Support and resistance levels are key concepts in technical analysis. This lesson will explain how these levels represent price points at which a stock has historically struggled to move below (support) or above (resistance). Recognizing these levels aids in identifying potential entry and exit points.

**5. Technical Indicators:**
Technical analysts use a variety of indicators to assess market conditions and predict price trends. This lesson will introduce you to popular indicators such as moving averages, relative strength index (RSI), and moving average convergence divergence (MACD). Understanding how to interpret these indicators enhances your ability to make informed decisions.

**6. Chart Patterns:**
Chart patterns, such as head and shoulders, double tops, and triangles, offer insights into potential trend reversals or continuations. This lesson will explore the significance of chart patterns and how analysts use them to anticipate future price movements.

**7. Volume Analysis:**
Trading volume is a crucial component of technical analysis. This lesson will elucidate how changes in trading volume can confirm or contradict price trends, providing valuable confirmation signals for technical analysts.

**8. Fibonacci Retracement:**
Fibonacci retracement is a mathematical tool used in technical analysis to identify potential levels of support and resistance. This lesson will explain the principles behind Fibonacci retracement and its application in analyzing price corrections.

**9. Moving Averages and Trend Confirmation:**
Moving averages are versatile tools in technical analysis. This lesson will delve into how different types of moving averages, such as simple and exponential, can confirm trends and provide insights into potential entry or exit points.

**10. Integrating Technical Analysis with Trading Strategies:**
Technical analysis is often integrated into various trading strategies, including day trading and swing trading. This lesson will guide you on how to incorporate technical analysis into your trading plan, considering factors such as timeframes and risk management.

**11. Challenges and Limitations:**
While powerful, technical analysis has its challenges and limitations. This lesson will discuss common pitfalls, such as false signals and the subjectivity of interpretation, helping you navigate potential risks.

**12. Conclusion: Empowering Your Trading Journey:**
As we conclude this lesson, you will have gained a comprehensive understanding of technical analysis and its role in predicting stock price movements. Whether you are a short-term trader or a long-term investor, incorporating technical analysis into your toolkit enhances your ability to navigate the dynamic landscape of the stock market.

In the upcoming lessons, we will explore practical applications of both fundamental and technical analysis, providing you with real-world insights into making strategic investment decisions. Stay engaged as we continue our exploration into the fascinating world of stocks and investment strategies!
""")]), LessonLearnTopic(name: "Bonds and fixed incom", description: """
   **What You Will Learn in This Course:**

Welcome to the comprehensive course on \"Bonds and Fixed Income for Beginners.\" This extensive program is tailored for the American audience, providing a thorough exploration of bonds, fixed-income securities, and the dynamics of the debt market. By the end of this course, you will have a solid foundation in understanding how bonds work, the various types available, and their role in investment portfolios.
""", lessons: [
    LessonLearn(title: "What Are Bonds?", duration: "15 min", text: """
- Explore the fundamental concept of bonds as debt securities issued by governments, corporations, and municipalities.
- Understand the structure of bonds, including face value, coupon payments, and maturity dates.

Welcome to the first lesson of our course, "Bonds and Fixed Income for Beginners." In this foundational lesson, we'll demystify the concept of bonds, exploring their fundamental characteristics and understanding their significance in the world of finance.

**1. Defining Bonds:**
At its core, a bond is a debt security that represents a loan made by an investor to a borrower—typically a government, municipality, or corporation. Bonds are essentially IOUs, outlining the terms of the loan, including the principal amount, interest rate, and maturity date.

**2. Bond Components:**
Understanding the components of a bond is crucial. Let's break it down:

- **Principal (Face Value):** The initial amount of money borrowed, also known as the face value or par value.
- **Coupon Payments:** Regular interest payments made by the issuer to the bondholder, typically expressed as a fixed percentage of the face value.
- **Maturity Date:** The date on which the principal amount is due to be repaid, marking the end of the bond's term.

**3. How Bonds Work:**
When you invest in a bond, you are essentially lending money to the issuer. In return, the issuer agrees to pay periodic interest (coupon payments) and return the principal at the bond's maturity. This predictable income stream makes bonds attractive to investors seeking stability and regular cash flow.

**4. Types of Issuers:**
Bonds can be issued by various entities, each serving different purposes:

- **Government Bonds:** Issued by national governments to fund public projects or manage fiscal policies.
- **Corporate Bonds:** Issued by corporations to raise capital for business operations, expansion, or debt refinancing.
- **Municipal Bonds:** Issued by state and local governments to finance infrastructure projects like schools, roads, and utilities.

**Key Takeaways:**

- **Definition:** Bonds are debt securities representing loans made by investors to borrowers.
- **Components:** Principal (face value), coupon payments, and maturity date are essential components of a bond.
- **Investor Role:** Bondholders receive periodic interest payments and the return of the principal at maturity.
- **Issuer Types:** Government, corporate, and municipal entities issue bonds for various purposes.

Understanding the basics of bonds lays the foundation for navigating the broader fixed-income market. In the upcoming lessons, we'll delve deeper into the intricacies of bond markets, exploring different types of bonds and their roles in investment portfolios. Stay engaged as we journey into the diverse world of bonds and fixed income!
"""), LessonLearn(title: "The Bond Issuance Process", duration: "10 min", text: """
- Delve into the process of how entities issue bonds to raise capital.
- Learn about primary and secondary markets for bonds and the role of underwriters.

Welcome to Lesson 2 of our course, "Bonds and Fixed Income for Beginners." In this lesson, we will unravel the intricacies of the bond issuance process, exploring how entities raise capital by issuing bonds and the critical steps involved in bringing bonds to the market.

- *1. **Initiating the Process:**
The bond issuance process begins when an entity, whether it be a government, corporation, or municipality, determines the need for additional capital. This need may arise from financing public projects, funding business operations, or supporting growth initiatives.

**2. Selecting Financial Advisors:**
Entities looking to issue bonds often engage financial advisors to guide them through the process. Financial advisors assist in structuring the bond offering, determining optimal terms, and ensuring compliance with regulatory requirements.

**3. Establishing Terms and Conditions:**
The issuer, in consultation with financial advisors, establishes the terms and conditions of the bond offering. This includes determining the principal amount (face value), interest rate (coupon rate), and maturity date. These terms collectively define the characteristics of the bond.

**4. Regulatory Compliance:**
Issuers must adhere to regulatory standards to ensure transparency and fairness in the market. Regulatory bodies, such as the Securities and Exchange Commission (SEC) for corporate bonds or Municipal Securities Rulemaking Board (MSRB) for municipal bonds, oversee the issuance process.

**5. Underwriting the Offering:**
To bring the bonds to the market, the issuer often works with investment banks or underwriters. These financial institutions commit to purchasing the entire bond issue from the issuer and then resell the bonds to investors. This underwriting process provides the issuer with the necessary funds upfront.

**6. Credit Rating Agencies:**
Before the bonds are offered to the public, credit rating agencies assess the creditworthiness of the issuer. The credit rating assigned influences investor confidence and determines the interest rate at which the bonds can be sold.

**7. Marketing and Roadshows:**
To attract investors, issuers conduct marketing campaigns and roadshows. These events provide an opportunity for issuers to present their financial health, growth prospects, and the details of the bond offering to potential investors.

**8. Pricing the Bonds:**
Once marketing efforts are underway, the bonds are priced. The pricing takes into account market conditions, interest rate environment, and the credit rating of the issuer. The goal is to set an attractive price that will entice investors while meeting the issuer's capital-raising objectives.

**9. Closing the Offering:**
With pricing finalized and investor commitments secured, the bond offering is closed. Investors receive their allocated bonds, and the issuer receives the capital raised through the sale of bonds.

**Key Takeaways:**

- **Initiation:** The bond issuance process begins when an entity identifies the need for additional capital.
- **Financial Advisors:** Entities engage financial advisors to guide them through the structuring of the bond offering.
- **Terms and Conditions:** The issuer establishes key terms, including principal amount, interest rate, and maturity date.
- **Underwriting:** Investment banks or underwriters commit to purchasing and reselling the entire bond issue.
- **Regulatory Compliance:** Issuers must comply with regulatory standards overseen by entities like the SEC or MSRB.

Understanding the bond issuance process provides insight into how entities raise capital through the issuance of bonds. In the upcoming lessons, we will delve deeper into the dynamics of bond markets, exploring different types of bonds and their unique characteristics. Stay engaged as we continue our exploration into the fascinating world of bonds and fixed income!
"""), LessonLearn(title: "Bond Pricing and Valuation", duration: "14 min", text: """
- Understand how bonds are priced in the market.
- Explore the impact of interest rates on bond prices and yields.

Welcome to Lesson 3 of our course, "Bonds and Fixed Income for Beginners." In this lesson, we'll explore the intricacies of bond pricing and valuation, essential aspects that determine the attractiveness of bonds to investors and influence their market performance.

**1. Understanding Bond Pricing:**
Bond pricing is a fundamental concept that reflects the market value of a bond at any given point in time. The price of a bond is influenced by various factors, with two primary components: the present value of future cash flows and the face value of the bond.

**2. Present Value of Future Cash Flows:**
Bonds generate cash flows through periodic interest payments (coupon payments) and the return of the principal at maturity. To determine the present value of these future cash flows, investors discount them back to their present value using a discount rate.

**3. Interest Rates and Bond Prices:**
One of the critical factors affecting bond prices is prevailing interest rates. When interest rates rise, the present value of future cash flows decreases, leading to a decline in bond prices. Conversely, falling interest rates result in higher bond prices.

**4. Yield and Yield to Maturity (YTM):**
Yield represents the annual return on a bond based on its current market price. Yield to Maturity (YTM) factors in both the coupon payments and any capital gains or losses if the bond is held until maturity. YTM is a crucial metric for investors assessing the attractiveness of a bond.

**5. Bond Premiums and Discounts:**
When a bond's market price is higher than its face value, it is trading at a premium. Conversely, if the market price is lower than the face value, the bond is trading at a discount. Understanding premiums and discounts provides insights into market perceptions of risk and interest rate expectations.

**6. Duration:**
Duration is a measure of a bond's sensitivity to interest rate changes. It helps investors gauge the potential impact of interest rate fluctuations on bond prices. Bonds with longer durations are more sensitive to interest rate changes than those with shorter durations.

**7. Factors Influencing Bond Valuation:**
Several factors influence bond valuation, including credit quality, time to maturity, and prevailing economic conditions. Understanding these factors empowers investors to make informed decisions about bond investments.

**8. Price Volatility and Market Conditions:**
Bond prices can experience volatility based on changes in market conditions, economic indicators, and geopolitical events. Investors should be aware of these factors and their potential impact on bond valuations.

**9. Bond Pricing Models:**
Sophisticated mathematical models, such as the discounted cash flow (DCF) model, help analysts calculate bond prices based on future cash flows and discount rates. While complex, these models provide a more accurate representation of bond valuations.

**Key Takeaways:**

- **Bond Pricing:** The market value of a bond determined by the present value of future cash flows.
- **Interest Rates:** Rising interest rates lead to lower bond prices, and falling rates result in higher bond prices.
- **Yield and YTM:** Yield reflects annual returns, while Yield to Maturity considers total returns until maturity.
- **Premiums and Discounts:** Bonds trade at premiums when priced above face value and discounts when priced below face value.
- **Duration:** Measures a bond's sensitivity to interest rate changes.
- **Market Factors:** Credit quality, time to maturity, and economic conditions influence bond valuation.

Understanding bond pricing and valuation is crucial for investors seeking to make informed decisions in the fixed-income market. In the upcoming lessons, we will delve into specific types of bonds and their unique characteristics. Stay engaged as we continue our exploration into the dynamic world of bonds and fixed income!
"""), LessonLearn(title: "Government Bonds", duration: "16 min", text: """
- Explore government bonds, including U.S. Treasuries, and understand their role as low-risk investments.
- Learn about the various maturities and yields associated with government bonds.

Welcome to Lesson 4 of our course, "Bonds and Fixed Income for Beginners." In this lesson, we will focus on government bonds, exploring their significance, types, and the role they play in the broader financial markets.

**1. Understanding Government Bonds:**
Government bonds are debt securities issued by national governments to raise capital for various purposes, including funding public projects, managing fiscal policies, and addressing budgetary needs. These bonds are considered one of the safest investments due to the backing of the issuing government.

**2. Types of Government Bonds:**
Government bonds come in different types, each with unique characteristics:

- **Treasury Bonds (T-Bonds):** Long-term government securities with maturities ranging from 20 to 30 years. They pay semiannual interest to bondholders.
- **Treasury Notes (T-Notes):** Intermediate-term bonds with maturities typically ranging from 2 to 10 years. Like T-Bonds, they pay semiannual interest.
- **Treasury Bills (T-Bills):** Short-term securities with maturities of one year or less. T-Bills are sold at a discount and do not pay interest; instead, investors earn returns through the difference between the purchase price and face value.

**3. Zero-Coupon Treasury Bonds:**
Zero-coupon bonds, also known as STRIPS (Separate Trading of Registered Interest and Principal of Securities), are created by separating the interest and principal components of a Treasury bond. These bonds are sold at a discount and do not make periodic interest payments. Instead, the investor receives the face value at maturity.

**4. Safety and Credit Risk:**
Government bonds are often considered risk-free because they are backed by the full faith and credit of the issuing government. The likelihood of default on government bonds is extremely low, making them a cornerstone of conservative investment portfolios.

**5. Interest Rate and Market Influence:**
Government bonds play a crucial role in shaping interest rates in the broader financial markets. Central banks use government bond yields as a monetary policy tool, influencing borrowing costs and economic activity.

**6. Treasury Inflation-Protected Securities (TIPS):**
TIPS are government bonds designed to protect investors from inflation. The principal value of TIPS adjusts based on changes in the Consumer Price Index (CPI), ensuring that investors receive returns that outpace inflation.

**7. Foreign Government Bonds:**
Investors can also consider bonds issued by foreign governments, known as sovereign bonds. These bonds come with their own set of considerations, including currency risk and geopolitical factors.

**8. Investing in Government Bonds:**
Government bonds are accessible to individual investors through various channels, including the primary market (when initially issued) and the secondary market (traded among investors). Investors can purchase government bonds directly or invest in bond funds that hold a diversified portfolio of government securities.

**Key Takeaways:**

- **Definition:** Government bonds are debt securities issued by national governments to raise capital.
- **Types:** Treasury Bonds, Treasury Notes, and Treasury Bills cater to different investment horizons.
- **Zero-Coupon Bonds:** STRIPS represent zero-coupon Treasury bonds created by separating interest and principal.
- **Safety:** Government bonds are considered risk-free due to the backing of the issuing government.
- **Influence on Markets:** Government bond yields impact interest rates and serve as a key monetary policy tool.

Government bonds are foundational instruments in the fixed-income market, known for their safety and stability. In the upcoming lessons, we will explore other types of bonds, including corporate and municipal bonds, providing you with a comprehensive understanding of the diverse fixed-income landscape. Stay engaged as we continue our exploration into the world of bonds and fixed income!
"""), LessonLearn(title: "Corporate Bonds", duration: "10 min", text: """
- Delve into the world of corporate bonds and understand how companies use them to raise capital.
- Explore credit ratings and the risks associated with corporate bonds.

Welcome to Lesson 5 of our course, "Bonds and Fixed Income for Beginners." In this lesson, we will delve into the dynamic world of corporate bonds, exploring their characteristics, purpose, and the considerations that investors should keep in mind when engaging with these debt securities.

**1. Understanding Corporate Bonds:**
Corporate bonds are debt securities issued by companies to raise capital for various purposes, such as expanding operations, funding projects, or refinancing existing debt. Unlike government bonds, corporate bonds introduce an element of credit risk, as the repayment is contingent on the financial health and performance of the issuing corporation.

**2. Types of Corporate Bonds:**
Corporate bonds come in various types, catering to different investor preferences and risk appetites:

- **Investment-Grade Bonds:** Issued by financially stable and creditworthy corporations. These bonds carry lower interest rates but are considered less risky.
- **High-Yield (Junk) Bonds:** Issued by companies with lower credit ratings. While they offer higher yields, they come with increased credit risk.

**3. Credit Ratings:**
Credit rating agencies assess the creditworthiness of corporations and assign ratings to their bonds. These ratings, such as those provided by agencies like Moody's and Standard & Poor's, help investors gauge the level of risk associated with a particular corporate bond.

**4. Interest Payments and Maturity:**
Corporate bonds typically pay periodic interest to bondholders, known as coupon payments. The bonds have a specified maturity date, at which point the principal is repaid to the bondholder. The terms of interest payments and maturity are outlined in the bond's indenture.

**5. Callable and Convertible Bonds:**
Some corporate bonds come with additional features, such as being callable or convertible. Callable bonds allow the issuer to redeem the bonds before maturity, while convertible bonds provide the option for bondholders to convert their debt into equity shares.

**6. Risks Associated with Corporate Bonds:**
Investing in corporate bonds involves considering various risks, including:

- **Credit Risk:** The risk of the issuing company defaulting on interest payments or failing to repay the principal.
- **Interest Rate Risk:** Changes in interest rates can impact the market value of corporate bonds.
- **Market Risk:** External factors, such as economic conditions and market sentiment, can affect the prices of corporate bonds.

**7. Diversification and Bond Funds:**
Investors seeking exposure to a diversified portfolio of corporate bonds may opt for bond funds. Bond funds pool investments from multiple investors and allocate them across a variety of corporate bonds, providing diversification and risk mitigation.

**8. Analyzing Corporate Bonds:**
Investors analyze corporate bonds by assessing financial statements, cash flow, and the overall health of the issuing company. Understanding the industry in which the corporation operates is also crucial for making informed investment decisions.

**Key Takeaways:**

- **Definition:** Corporate bonds are debt securities issued by companies to raise capital.
- **Types:** Investment-grade bonds are considered less risky, while high-yield bonds carry higher credit risk.
- **Credit Ratings:** Agencies assign credit ratings to assess the creditworthiness of corporations.
- **Callable and Convertible Bonds:** Some bonds may be callable or convertible, introducing additional features.
- **Risks:** Credit risk, interest rate risk, and market risk are key considerations for corporate bond investors.

Investing in corporate bonds provides an avenue for earning income while navigating the dynamics of credit risk. In the upcoming lessons, we will explore other facets of the fixed-income market, including municipal bonds and strategies for constructing diversified bond portfolios. Stay engaged as we continue our exploration into the world of bonds and fixed income!
"""), LessonLearn(title: "Municipal Bonds", duration: "20 min", text: """
- Learn about municipal bonds issued by state and local governments.
- Understand the tax advantages and risks associated with investing in municipal bonds.

Welcome to Lesson 6 of our course, "Bonds and Fixed Income for Beginners." In this lesson, we will explore the unique characteristics of municipal bonds, examining their role in financing local projects, the benefits they offer to investors, and the considerations associated with this specific category of bonds.

**1. Understanding Municipal Bonds:**
Municipal bonds, often referred to as "munis," are debt securities issued by state and local governments, as well as various governmental agencies. The primary purpose of municipal bonds is to raise funds for public projects and infrastructure development, such as schools, highways, water treatment facilities, and other essential community initiatives.

**2. Types of Municipal Bonds:**
Municipal bonds come in different types, each tailored to meet specific financing needs:

- **General Obligation Bonds:** Backed by the full faith and credit of the issuing municipality, supported by its taxing authority.
- **Revenue Bonds:** Secured by the revenue generated from specific projects, such as toll roads, airports, or utilities.

**3. Tax Advantages:**
One of the key attractions of municipal bonds for investors is their tax-advantaged status. Interest income generated from municipal bonds is often exempt from federal income tax. Additionally, if the investor resides in the state where the bond is issued, the interest may also be exempt from state and local taxes.

**4. Credit Ratings and Risks:**
Credit rating agencies assess the creditworthiness of municipalities and assign ratings to their bonds. While municipal bonds are generally considered lower risk due to the backing of government entities, investors should still be mindful of credit ratings and potential risks, such as economic downturns and changes in local tax bases.

**5. Callable and Refunding Bonds:**
Similar to corporate bonds, some municipal bonds may be callable, allowing the issuer to redeem the bonds before maturity. Refunding bonds are issued to replace existing bonds with new ones, often to take advantage of lower interest rates.

**6. Yield and Market Conditions:**
Municipal bond yields are influenced by market conditions and interest rate trends. Investors should stay informed about economic indicators and interest rate movements to make strategic investment decisions.

**7. Considerations for Investors:**
Investors in municipal bonds should consider factors such as the financial health of the issuing municipality, the purpose of the bond issue, and the potential impact of economic conditions on local tax revenue.

**8. Investing in Municipal Bonds:**
Municipal bonds are accessible to individual investors through the primary market when initially issued and the secondary market, where existing bonds are traded. Investors can choose to buy individual bonds or invest in municipal bond funds for added diversification.

**Key Takeaways:**

- **Definition:** Municipal bonds are debt securities issued by state and local governments to fund public projects.
- **Tax Advantages:** Interest income from municipal bonds is often exempt from federal, and sometimes state and local, income taxes.
- **Types:** General obligation bonds and revenue bonds serve different financing purposes.
- **Credit Ratings and Risks:** Credit ratings assess the creditworthiness of municipalities, and investors should be mindful of potential risks.
- **Callable and Refunding Bonds:** Some municipal bonds may be callable or issued for refunding purposes.

Municipal bonds play a vital role in financing essential community projects while offering tax advantages to investors. In the upcoming lessons, we will continue our exploration of the fixed-income market, examining other bond types and strategies for constructing well-balanced bond portfolios. Stay engaged as we journey deeper into the world of bonds and fixed income!
""")]), LessonLearnTopic(name: "Investment funds and ETFs", description: """
**What You Will Learn in This Course:**

Welcome to the comprehensive course on "Fundamentals of Investment Funds and ETFs for Beginners." This extensive program is designed for the novice investor in the American market, providing a deep dive into the world of investment funds and Exchange-Traded Funds (ETFs). By the end of this course, you will have a solid understanding of how these investment vehicles work, their advantages, and how to incorporate them into your investment strategy.
""", lessons: [
    LessonLearn(title: "What are Investment Funds?", duration: "18 min", text: """
- Explore the concept of investment funds and understand how they pool money from multiple investors to invest in a diversified portfolio of assets.
- Learn about the different types of investment funds, including mutual funds and hedge funds.

Welcome to the first lesson of our course, "Fundamentals of Investment Funds and ETFs for Beginners." In this lesson, we will embark on our exploration of the investment landscape by diving into the concept of investment funds and understanding their fundamental characteristics.

**1. Definition of Investment Funds:**
Investment funds, also commonly known as mutual funds, are financial vehicles that pool money from numerous investors to create a diversified portfolio of securities. These securities can include stocks, bonds, money market instruments, or a combination of these asset classes. The goal is to provide investors with a professionally managed and diversified investment option, allowing them to access a broad range of assets without the need for individual stock or bond selection.

**2. Structure of Investment Funds:**
Investment funds are structured as open-end or closed-end funds. Let's explore each:

- **Open-End Funds:** These funds continuously issue and redeem shares based on investor demand. The number of shares in an open-end fund is not fixed, and investors can buy or sell shares at the net asset value (NAV) per share, which is calculated at the end of each trading day.
- **Closed-End Funds:** These funds issue a fixed number of shares through an initial public offering (IPO). Once the shares are issued, they are traded on secondary markets like stocks. Unlike open-end funds, closed-end funds do not continuously issue or redeem shares.

**3. Professional Management:**
One of the key advantages of investment funds is the presence of professional fund managers who make investment decisions on behalf of the fund's investors. These managers conduct in-depth research, monitor market conditions, and adjust the fund's portfolio to align with the fund's objectives.

**4. Diversification Benefits:**
Diversification is a central principle of investment funds. By holding a variety of assets, funds aim to spread risk and minimize the impact of poor-performing individual securities. This diversification helps protect investors from the volatility that may be associated with holding a concentrated portfolio.

**5. Types of Investment Funds:**
Investment funds come in various types, catering to different investment objectives and risk appetites. Common types include:

- **Equity Funds:** Invest primarily in stocks, offering growth potential but also higher volatility.
- **Bond Funds:** Focus on fixed-income securities like government or corporate bonds, providing income with lower risk than equity funds.
- **Balanced Funds:** Seek a balance between stocks and bonds to provide a mix of growth and income.

**6. Entry and Exit Strategies:**
Investors can enter investment funds by purchasing shares, and they can exit by selling their shares back to the fund. The process is straightforward, allowing investors flexibility in managing their investments based on their financial goals and market conditions.

**Key Takeaways:**

- **Definition:** Investment funds pool money from multiple investors to create a diversified portfolio.
- **Structure:** Open-end funds continuously issue/redeem shares; closed-end funds have a fixed number of shares traded on secondary markets.
- **Professional Management:** Fund managers make investment decisions on behalf of investors.
- **Diversification:** Spread risk by holding a variety of assets.
- **Types:** Equity funds, bond funds, and balanced funds cater to different investment objectives.

Understanding the basics of investment funds lays a solid foundation for navigating the broader landscape of financial markets. In the upcoming lessons, we will explore specific types of investment funds, including exchange-traded funds (ETFs), providing you with a comprehensive understanding of these essential investment vehicles. Stay engaged as we continue our exploration into the world of funds and ETFs!
"""), LessonLearn(title: "Understanding Exchange-Traded Funds (ETFs)", duration: "14 min", text: """
- Define ETFs and explore their unique characteristics, including being traded on stock exchanges like individual stocks.
- Compare and contrast ETFs with traditional investment funds.

Welcome to the second lesson of our course, "Fundamentals of Investment Funds and ETFs for Beginners." In this lesson, we will delve into the world of Exchange-Traded Funds (ETFs), exploring their unique characteristics, benefits, and how they differ from traditional investment funds.

**1. Definition of ETFs:**
Exchange-Traded Funds (ETFs) are investment funds that are traded on stock exchanges, similar to individual stocks. ETFs share some similarities with mutual funds, such as pooling money from investors to create a diversified portfolio, but they differ in their structure and how they are bought and sold.

**2. ETF Structure and Creation/Redemption Process:**

- **Creation:** ETF shares are created through a unique process involving authorized participants (typically large financial institutions). These participants assemble a portfolio of underlying assets that mirrors the ETF's investment objective and deliver it to the fund's sponsor in exchange for newly created ETF shares.
- **Redemption:** Conversely, when an investor wishes to redeem their ETF shares, they can do so by exchanging them for the underlying assets held by the fund. This creation and redemption mechanism helps keep the ETF's market price closely aligned with its net asset value (NAV).

**3. Trading Mechanism:**

- ETFs trade on stock exchanges throughout the trading day at market prices that may vary from their NAV. This intraday trading flexibility allows investors to buy or sell ETF shares at any point during market hours, unlike traditional mutual funds, which are traded at the end of the day at the NAV.

**4. Advantages of ETFs:**

- **Liquidity:** ETFs can be bought or sold throughout the trading day, providing liquidity to investors.
- **Diversification:** Like traditional investment funds, ETFs offer diversification benefits by holding a basket of securities.
- **Cost Efficiency:** ETFs often have lower expense ratios compared to actively managed mutual funds, making them a cost-effective investment option.

**5. Types of ETFs:**

- **Equity ETFs:** Track stock market indices, providing investors with exposure to a specific segment of the stock market.
- **Bond ETFs:** Invest in fixed-income securities, offering diversification within the bond market.
- **Commodity ETFs:** Track the performance of commodities such as gold, silver, or oil.
- **Sector ETFs:** Focus on specific sectors of the economy, allowing investors to target industries of interest.

**6. Tax Efficiency:**

- ETFs are known for their tax efficiency. The "in-kind" creation and redemption process minimizes capital gains distributions, resulting in potential tax advantages for investors.

**7. Key Differences from Mutual Funds:**

- Unlike mutual funds, ETFs are traded on stock exchanges.
- ETFs do not have minimum investment requirements.
- ETFs may have lower expense ratios compared to actively managed mutual funds.

**Key Takeaways:**

- **Definition:** ETFs are investment funds traded on stock exchanges.
- **Structure:** Created and redeemed through authorized participants, maintaining close alignment with NAV.
- **Trading Mechanism:** ETFs trade like individual stocks throughout the trading day.
- **Advantages:** Provide liquidity, diversification, and cost efficiency.
- **Types:** Include equity ETFs, bond ETFs, commodity ETFs, and sector ETFs.
- **Tax Efficiency:** The in-kind creation and redemption process can result in tax advantages.

Understanding the unique characteristics of ETFs equips investors with a valuable tool for building diversified portfolios with flexibility and cost efficiency. In the following lessons, we will explore specific types of ETFs and delve into advanced topics to deepen your knowledge of these investment vehicles. Stay engaged as we continue our exploration into the world of funds and ETFs!
"""), LessonLearn(title: "Benefits and Risks of Investment Funds and ETFs", duration: "15 min", text: """
- Examine the advantages of investing in funds, such as diversification, professional management, and liquidity.
- Understand the potential risks associated with these investment vehicles and how to mitigate them.

Welcome to the third lesson of our course, "Fundamentals of Investment Funds and ETFs for Beginners." In this lesson, we will explore the various benefits and risks associated with both investment funds and Exchange-Traded Funds (ETFs), providing you with a comprehensive understanding to make informed investment decisions.

**1. Benefits of Investment Funds and ETFs:**

**a. Diversification:**
One of the primary benefits of both investment funds and ETFs is diversification. By pooling funds from multiple investors, these vehicles create portfolios that hold a variety of assets. Diversification helps spread risk and can mitigate the impact of poor-performing individual securities.

**b. Professional Management:**
Both investment funds and ETFs are managed by professional fund managers. These experienced individuals conduct research, make investment decisions, and actively manage the portfolio to achieve the fund's stated objectives. This expertise is particularly beneficial for investors who may not have the time or knowledge to manage their investments actively.

**c. Accessibility:**
Investment funds and ETFs provide investors with access to a diversified portfolio of securities without the need for significant capital. This accessibility allows individuals to participate in various markets and asset classes that might be challenging to access individually.

**d. Liquidity:**
ETFs, in particular, offer high liquidity as they are traded on stock exchanges throughout the trading day. This means investors can buy or sell shares at prevailing market prices whenever the stock exchange is open, providing flexibility and liquidity.

**e. Cost Efficiency:**
ETFs, in general, have lower expense ratios compared to actively managed mutual funds. The passively managed nature of many ETFs, especially those tracking market indices, contributes to their cost efficiency. Lower expenses translate to more of the investment returns being retained by investors.

**2. Risks of Investment Funds and ETFs:**

**a. Market Risk:**
All investments carry market risk, and both investment funds and ETFs are no exception. The value of the underlying securities in these funds can fluctuate based on market conditions, economic factors, and geopolitical events. Investors may experience losses if the market turns unfavorable.

**b. Management Risk:**
While professional management is a benefit, it also introduces management risk. The performance of the fund is contingent on the skill and decisions of the fund manager. Changes in management or poor decision-making can impact the fund's returns.

**c. Fees and Expenses:**
While ETFs generally have lower expense ratios, it's essential to be aware of any fees associated with buying or selling shares. Additionally, actively managed mutual funds may have higher fees, potentially impacting overall returns.

**d. Liquidity Concerns:**
While ETFs are known for their liquidity, some niche or less-traded ETFs may face liquidity challenges. Investors should exercise caution when dealing with less liquid ETFs, as it could affect the ease of buying or selling shares.

**e. Tracking Error:**
For index-tracking ETFs, there's a risk of tracking error—the variance between the ETF's performance and the underlying index it aims to replicate. Factors like fees, trading costs, and market conditions can contribute to tracking errors.

**Key Takeaways:**

- **Benefits:** Diversification, professional management, accessibility, liquidity, and cost efficiency.
- **Risks:** Market risk, management risk, fees and expenses, liquidity concerns, and tracking error.

Understanding the benefits and risks associated with investment funds and ETFs is crucial for investors in making informed decisions. In the upcoming lessons, we will delve into specific types of investment funds and ETFs, providing you with a deeper understanding of their unique characteristics. Stay engaged as we continue our exploration into the world of funds and ETFs!
"""), LessonLearn(title: "Mutual Funds", duration: "22 min", text: """
- Delve into the world of mutual funds, understanding their structure, management styles, and how they are bought and sold.
- Explore the different categories of mutual funds, including equity funds, bond funds, and balanced funds.

Welcome to the fourth lesson of our course, "Fundamentals of Investment Funds and ETFs for Beginners." In this lesson, we will delve into the world of mutual funds, understanding their structure, management styles, and how they can be a valuable addition to your investment portfolio.

**1. Definition of Mutual Funds:**
Mutual funds are investment vehicles that pool money from multiple investors to create a diversified portfolio of stocks, bonds, or other securities. These funds are managed by professional fund managers, and investors own shares in the mutual fund, representing a portion of the overall portfolio.

**2. Structure of Mutual Funds:**

- **Open-End Funds:** The majority of mutual funds are open-end funds, meaning they continuously issue and redeem shares based on investor demand. The number of shares is not fixed, and investors can buy or sell shares at the net asset value (NAV) per share, calculated at the end of each trading day.
- **Closed-End Funds:** A less common structure, closed-end funds issue a fixed number of shares through an initial public offering (IPO). These shares are then traded on secondary markets, similar to stocks.

**3. Management Styles:**
Mutual funds can have different management styles, influencing their investment approach:

- **Actively Managed Funds:** These funds have fund managers actively making investment decisions to outperform the market or a specific benchmark. The goal is to generate returns that exceed the fund's benchmark index.
- **Passively Managed (Index) Funds:** Passively managed funds aim to replicate the performance of a specific market index. Instead of active decision-making, these funds track the index's composition, providing investors with market exposure.

**4. Investment Objectives:**
Mutual funds cater to various investment objectives, offering options such as:

- **Equity Funds:** Investing primarily in stocks, providing growth potential with higher volatility.
- **Bond Funds:** Focusing on fixed-income securities, offering income with lower risk than equity funds.
- **Balanced Funds:** Striking a balance between stocks and bonds to provide a mix of growth and income.

**5. Advantages of Mutual Funds:**

- **Professional Management:** Fund managers conduct research and actively manage the portfolio.
- **Diversification:** Mutual funds offer instant diversification by holding a variety of securities.
- **Accessibility:** Investors can enter and exit mutual funds by buying or selling shares at the end of the trading day.
- **Liquidity:** Open-end mutual funds provide liquidity as investors can redeem shares at the NAV.

**6. Considerations for Investors:**

- **Fees and Expenses:** Investors should be aware of the fees associated with mutual funds, including management fees, sales loads, and other expenses.
- **Performance History:** Reviewing the fund's historical performance can provide insights into its track record.
- **Risk Profile:** Understanding the risk profile of the mutual fund, including its historical volatility and investment strategy, is crucial.

**Key Takeaways:**

- **Definition:** Mutual funds pool money from multiple investors to create a diversified portfolio.
- **Structure:** Open-end funds continuously issue/redeem shares; closed-end funds have a fixed number of shares traded on secondary markets.
- **Management Styles:** Actively managed funds involve fund managers making decisions; passively managed funds track market indices.
- **Investment Objectives:** Include equity funds, bond funds, and balanced funds.
- **Advantages:** Professional management, diversification, accessibility, and liquidity.

Mutual funds offer investors a convenient way to access diversified portfolios managed by professionals. In the upcoming lessons, we will continue exploring other types of investment funds and delve into the specifics of Exchange-Traded Funds (ETFs). Stay engaged as we continue our journey into the world of funds and ETFs!
"""), LessonLearn(title: "Hedge Funds and Private Equity Funds", duration: "25 min", text: """
- Learn about hedge funds and private equity funds, understanding their strategies, risk profiles, and the unique characteristics that set them apart.

Welcome to the fifth lesson of our course, "Fundamentals of Investment Funds and ETFs for Beginners." In this lesson, we will explore the fascinating realms of hedge funds and private equity funds, delving into their unique characteristics, investment strategies, and the distinctive roles they play in the financial landscape.

**1. Understanding Hedge Funds:**
Hedge funds are investment funds that employ various strategies to generate returns for their investors. Unlike traditional investment funds, hedge funds often have more flexibility in their investment approach. Some common characteristics of hedge funds include:

- **Managerial Autonomy:** Hedge fund managers have a significant degree of autonomy in making investment decisions, allowing them to adapt to changing market conditions.
- **Performance Incentives:** Hedge fund managers typically receive both a management fee (a percentage of assets under management) and a performance fee (a percentage of profits), aligning their interests with those of the investors.
- **Diverse Strategies:** Hedge funds employ a wide range of strategies, including long/short equity, global macro, event-driven, and quantitative strategies, among others.

**2. Private Equity Funds:**
Private equity funds, on the other hand, focus on investing in private companies rather than publicly traded securities. Private equity funds typically take a more active role in managing and influencing the companies in which they invest. Key features of private equity funds include:

- **Long-Term Investments:** Private equity funds often have a longer investment horizon, with the goal of improving the performance of the companies in their portfolio over several years.
- **Active Management:** Private equity fund managers actively participate in the management and strategic decisions of the companies they invest in, aiming to enhance operational efficiency and profitability.
- **Illiquid Investments:** Investments in private companies are less liquid compared to publicly traded securities. Investors in private equity funds should be prepared for longer holding periods.

**3. Investment Objectives:**

- **Hedge Funds:** Hedge funds seek to generate absolute returns, regardless of overall market conditions. Their strategies are designed to provide positive returns regardless of whether markets are rising or falling.
- **Private Equity Funds:** Private equity funds aim to achieve capital appreciation by investing in private companies with growth potential. The goal is often to enhance the value of these companies and eventually exit through a sale or public offering.

**4. Risks and Considerations:**

- **Hedge Funds:** While hedge funds offer potential for high returns, they also come with higher levels of risk. Strategies such as leverage and derivatives can amplify losses. Additionally, not all hedge funds are open to retail investors, and some may have high entry requirements.
- **Private Equity Funds:** Investing in private companies carries its own set of risks, including the potential for business failure or industry-specific challenges. Investors should be aware of the longer holding periods and the illiquid nature of these investments.

**5. Access and Regulation:**

- **Hedge Funds:** Hedge funds are often open to accredited investors, who meet specific income and net worth requirements. They are subject to less regulatory oversight compared to mutual funds.
- **Private Equity Funds:** Access to private equity funds is typically limited to institutional investors, high-net-worth individuals, and certain qualified investors. These funds are subject to regulatory scrutiny but may have more flexibility than publicly traded funds.

**Key Takeaways:**

- **Hedge Funds:** Flexible investment strategies, performance incentives, and diverse approaches to generate absolute returns.
- **Private Equity Funds:** Focus on private companies, active management, and longer investment horizons.
- **Investment Objectives:** Hedge funds aim for absolute returns; private equity funds seek capital appreciation.
- **Risks and Considerations:** Hedge funds may involve higher risk due to leverage; private equity funds carry risks associated with private company investments.
- **Access and Regulation:** Hedge funds may be open to accredited investors; private equity funds often limit access to institutional and high-net-worth investors.

Hedge funds and private equity funds offer unique opportunities for investors seeking alternative investment strategies. In the upcoming lessons, we will continue our exploration of investment funds, including Real Estate Investment Trusts (REITs) and other specialized vehicles. Stay engaged as we delve deeper into the diverse world of funds and ETFs!
"""), LessonLearn(title: "Real Estate Investment Trusts (REITs)", duration: "20 min", text: """
- Explore the concept of REITs as investment funds focused on real estate assets.
- Understand how REITs provide opportunities for investors to gain exposure to the real estate market.

Welcome to the sixth lesson of our course, "Fundamentals of Investment Funds and ETFs for Beginners." In this lesson, we will explore the exciting realm of Real Estate Investment Trusts (REITs), understanding their structure, benefits, and the unique way they provide investors with exposure to the real estate market.

**1. Introduction to REITs:**
Real Estate Investment Trusts (REITs) are investment vehicles that allow individuals to invest in a diversified portfolio of income-generating real estate assets. REITs offer a unique structure that combines the liquidity of a publicly traded company with the income potential of real estate investments.

**2. Structure of REITs:**

- **Publicly Traded:** Most REITs are publicly traded on stock exchanges, providing investors with the ability to buy and sell shares similar to stocks.
- **Income Distribution:** REITs are required by law to distribute a significant portion of their income to shareholders in the form of dividends. This characteristic makes them an attractive option for income-focused investors.
- **Diverse Portfolio:** REITs typically own and manage a diverse range of real estate assets, which may include residential properties, commercial properties (office buildings, malls), hotels, and even infrastructure assets such as cell towers or data centers.

**3. Types of REITs:**

- **Equity REITs:** These REITs primarily own and manage income-generating real estate properties. The income generated from rents and property appreciation is distributed to shareholders.
- **Mortgage REITs:** Mortgage REITs invest in real estate mortgages or provide financing for real estate transactions. They generate income through interest payments on the mortgages they hold.
- **Hybrid REITs:** These REITs combine elements of both equity and mortgage REITs, holding both physical properties and real estate-related loans.

**4. Benefits of Investing in REITs:**

- **Diversification:** REITs provide investors with a way to diversify their investment portfolios by gaining exposure to the real estate sector without the need to directly own and manage properties.
- **Liquidity:** Being traded on stock exchanges, REITs offer liquidity, allowing investors to buy or sell shares easily.
- **Stable Income:** The income distribution requirement ensures that REITs often provide a steady stream of income through dividends.

**5. Risks and Considerations:**

- **Interest Rate Sensitivity:** REITs may be sensitive to changes in interest rates. When interest rates rise, the cost of financing for real estate may increase, affecting the profitability of REITs.
- **Market Conditions:** Like any investment, the performance of REITs can be influenced by overall market conditions and economic factors.
- **Property-Specific Risks:** The value of real estate assets within a REIT's portfolio can be affected by factors such as location, market demand, and the condition of the properties.

**6. Tax Considerations:**

- REITs are often structured to pass through income to investors, which can result in tax advantages. Shareholders may receive favorable tax treatment on the dividends received from REITs.

**Key Takeaways:**

- **Introduction:** REITs provide a way for investors to access diversified real estate portfolios.
- **Structure:** Publicly traded, income distribution, and diverse real estate holdings.
- **Types:** Equity REITs, Mortgage REITs, and Hybrid REITs cater to different investment preferences.
- **Benefits:** Diversification, liquidity, and stable income.
- **Risks and Considerations:** Interest rate sensitivity, market conditions, and property-specific risks.
- **Tax Considerations:** Potential tax advantages for investors through pass-through income.

REITs offer a compelling avenue for investors to participate in the real estate market without the complexities of property ownership. In the following lessons, we will continue our exploration into specialized investment vehicles, providing you with a comprehensive understanding of the diverse world of funds and ETFs. Stay engaged as we uncover more investment opportunities!
""")

])
    ]
    
    @IBOutlet weak var tableForTopicks: UITableView!
    
    @IBAction func toSetsLearning(_ sender: Any) {
        let std = UIStoryboard(name: "SetsLearnViewController", bundle: nil)
        let viewCo = std.instantiateViewController(withIdentifier: "SetsLearnViewController") as! SetsLearnViewController

        present(viewCo, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableForTopicks.showsVerticalScrollIndicator = false
        tableForTopicks.dataSource = self
        tableForTopicks.delegate = self
        let nib = UINib(nibName: "LessonCell", bundle: nil)
        tableForTopicks.register(nib, forCellReuseIdentifier: "LessonCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        topicks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LessonCell", for: indexPath) as! LessonCell
       // cell.configure(with: resultNews[indexPath.row])
        cell.colorBackLearn.backgroundColor = colorsForTopics[indexPath.row]
        cell.logoImageLearn?.image = UIImage(named: imagesForTopicksNames[indexPath.row])
        cell.countLearnsLessons.text = "\(topicks[indexPath.row].lessons.count) lessons"
        cell.nameLearnLabel.text = topicks[indexPath.row].name
        if indexPath.row < 2 {
            cell.levelLearnLabel.text = levelsEducation[0]
        } else if indexPath.row < 4 {
            cell.levelLearnLabel.text = levelsEducation[1]

        } else {
            cell.levelLearnLabel.text = levelsEducation[2]
        }
        
        
        cell.toLearnTopicButton.tag = indexPath.row
        cell.toLearnTopicButton.addTarget(self, action: #selector(onFullLearninigTopic), for: .touchUpInside)
        
        
        
               return cell
    }
    
    @objc func onFullLearninigTopic(_ sender: UIButton) {
        let stdLearn = UIStoryboard(name: "ListLessonsLearnVC", bundle: nil)
        let viewCoLearn = stdLearn.instantiateViewController(withIdentifier: "ListLessonsLearnVC") as! ListLessonsLearnVC
        viewCoLearn.learnTopic = topicks[sender.tag]
        viewCoLearn.color = colorsForTopics[sender.tag]
        viewCoLearn.imName = imagesForTopicksNames[sender.tag]
        if sender.tag < 2 {
            viewCoLearn.level = levelsEducation[0]
        } else if sender.tag < 4 {
            viewCoLearn.level = levelsEducation[1]

        } else {
            viewCoLearn.level = levelsEducation[2]
        }
        
        viewCoLearn.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(viewCoLearn, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 292
       }
    

}

struct LessonsData: Codable {
    let lessonTopics: [LessonLearnTopic]
}

struct LessonLearn: Codable, Equatable {
    var title: String
    var duration: String
    var text: String
}

struct LessonLearnTopic: Codable {
    var name: String
    var description: String
    var lessons: [LessonLearn]
}
