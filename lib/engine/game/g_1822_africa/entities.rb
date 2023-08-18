# frozen_string_literal: true

module Engine
  module Game
    module G1822Africa
      module Entities
        COMPANIES = [
          {
            name: 'P1 (Permanent L-train)',
            sym: 'P1',
            desc: 'MAJOR/MINOR, Phase 1. Permanent L-train',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P2 (Permanent 2-train)',
            sym: 'P2',
            desc: 'MAJOR, Phase 2. Permanent 2-train',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P3 (Permanent 2-train)',
            sym: 'P3',
            desc: 'MAJOR, Phase 2. Permanent 2-train',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P4 (Pullman)',
            sym: 'P4',
            desc: 'MAJOR/MINOR, Phase 3. A "Pullman" carriage that can be added to another train owned by the company.'\
                  ' It converts the train into a + train. Does not count against train limit and does not count '\
                  'as a train for the purposes of train ownership. Can’t be sold to another company. Does not close.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P5 (Pullman)',
            sym: 'P5',
            desc: 'MAJOR/MINOR, Phase 3. A "Pullman" carriage that can be added to another train owned by the company.'\
                  ' It converts the train into a + train. Does not count against train limit and does not count '\
                  'as a train for the purposes of train ownership. Can’t be sold to another company. Does not close.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P6 (Recycled train)',
            sym: 'P6',
            desc: 'MAJOR/MINOR, Phase 3. Close this company to buy a rusted train for full price '\
                  '(purchased train becomes permanent and is not a special train)',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P7 (Extra tile)',
            sym: 'P7',
            desc: 'MAJOR/MINOR, Phase 3. Extra Tile Lay. The owning company may lay an additional yellow tile '\
                  '(or two for major companies beginning in Phase 3), or make one additional tile upgrade '\
                  'in its track laying step. The upgrade can be to a tile laid in its normal tile laying step. '\
                  'All other normal track laying restrictions apply. Once acquired, the private company pays '\
                  'its revenue to the owning company until the power is exercised and the company closes.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P8 (Reserve Three Tiles)',
            sym: 'P8',
            desc: 'MAJOR/MINOR, Phase 1. Upon acquisition, owning company must reserve three tiles from the stock '\
                  'of unplayed tiles for future placement. No other company may use these tiles held in reserve. '\
                  'The revenue of this private company changes to A5x the number of tiles it holds. '\
                  'Once the owning company reserves tiles, it may not place any other tiles '\
                  'until those tiles have been placed, even if it becomes impossible to place the reserved tiles.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P9 (Remove Town)',
            sym: 'P9',
            desc: 'MAJOR/MINOR, Phase 2. Remove Small Station. Allows the owning company to place '\
                  'a plain yellow track tile directly on an undeveloped small station hex location '\
                  'or upgrade a small station tile of one colour to a plain track tile of the next colour. '\
                  'This closes the company and counts as the company’s normal track laying step. '\
                  'All other normal track laying restrictions apply. Once acquired, the private company '\
                  'pays its revenue to the owning company until the power is exercised and the company is closed.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P10 (Game Reserve)',
            sym: 'P10',
            desc: 'MAJOR/MINOR, Phase 3. When this company is acquired, the owning company must place '\
                  'the striped Game Reserve tile on any empty (and non-desert) hex. '\
                  'Placement must not run track into an unplayable hex edge. This hex becomes a game reserve. '\
                  'The company immediately receives a bonus equal to A5x the number of hexes between '\
                  'this game reserve and the preprinted game reserve (excluding the reserve hexes).',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P11 (Mountain Rebate)',
            sym: 'P11',
            desc: 'MAJOR/MINOR, Phase 3. After the owning company lays a yellow tile in a mountain hex, '\
                  'it earns A50 into its treasury. The private company immediately closes.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P12 (Fast Sahara Building)',
            sym: 'P12',
            desc: 'MAJOR/MINOR, Phase 1. The owning company may place any amount of tiles in the hexes marked '\
                  'with desert terrain as their normal tile laying step at normal cost. '\
                  'Using this ability closes the private company.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P13 (Station Swap)',
            sym: 'P13',
            desc: 'MAJOR, Phase 5. Station Marker Swap. Allows the owning company to move a token from the exchange '\
                  'token area of its charter to the available token area, or vice versa. '\
                  'This company closes when its power is exercised.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P14 (Gold Mine)',
            sym: 'P14',
            desc: 'MAJOR, Phase 3. Owning company close this company to place the +20 gold mine token in any city '\
                  'with an open city slot. This token adds 20 to the value of that city for all corporations. '\
                  'The gold mine token occupies a city slot and blocks routes through that city '\
                  'if the city is otherwise full.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P15 (Coffee Plantation)',
            sym: 'P15',
            desc: 'MAJOR/MINOR, Phase 1. Owning company may close this private company to place the coffee '\
                  'plantation token on any hex with mountainous terrain and no tile. '\
                  'The company immediately receives into its treasury A30. When a tile is placed in that hex, '\
                  'the coffee plantation token is placed on it and prevents upgrading this tile. '\
                  'All routes that use this tile earn an extra A20.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P16 (A10x Phase)',
            sym: 'P16',
            desc: 'MAJOR/MINOR, Phase 2. A10x Phase. Pays revenue of A10 x the phase number to the player, '\
                  'and pays treasury credits of A10 x phase number to the private company. '\
                  'This credit is retained on the private company charter. '\
                  'When acquired, the acquiring company receives this treasury money and this private company closes. '\
                  'If not acquired beforehand, this company closes at the start of Phase 6 and all treasury credits '\
                  'are returned to the bank.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P17 (Bank Share Buy)',
            sym: 'P17',
            desc: 'MAJOR, Phase 2. Owning company may close this private company for the bank to purchase a share '\
                  'it owns for the current market value. The share is moved to the bank pool. This does not count '\
                  'as a share issuance and does not affect the stock price.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'P18 (Safari Bonus)',
            sym: 'P18',
            desc: 'MAJOR/MINOR, Phase 3. The Safari Bonus can be added to a train owned by the company. '\
                  'It converts the train into a safari train that counts an extra 20 to the earnings for reaching '\
                  'each of the game reserves. Does not count against train limit and does not count as a train '\
                  'for the purposes of train ownership. Can’t be sold to another company. Does not close.',
            value: 0,
            revenue: 10,
            abilities: [],
            color: nil,
          },
          {
            name: 'CONCESSION: NAR',
            sym: 'C1',
            value: 100,
            revenue: 10,
            desc: 'Has a face value of $100 and contributes $100 to conversion into the NAR director’s certificate.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['NAR'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#000000',
            text_color: 'white',
          },
          {
            name: 'CONCESSION: WAR',
            sym: 'C2',
            value: 100,
            revenue: 10,
            desc: 'Has a face value of $100 and contributes $100 to conversion into the WAR director’s certificate.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['WAR'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#000000',
            text_color: 'white',
          },
          {
            name: 'CONCESSION: EAR',
            sym: 'C3',
            value: 100,
            revenue: 10,
            desc: 'Has a face value of $100 and contributes $100 to conversion into the EAR director’s certificate.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['EAR'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#000000',
            text_color: 'white',
          },
          {
            name: 'CONCESSION: CAR',
            sym: 'C4',
            value: 100,
            revenue: 10,
            desc: 'Has a face value of $100 and contributes $100 to conversion into the CAR director’s certificate.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['CAR'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#000000',
            text_color: 'white',
          },
          {
            name: 'CONCESSION: SAR',
            sym: 'C5',
            value: 100,
            revenue: 10,
            desc: 'Has a face value of $100 and contributes $100 to conversion into the SAR director’s certificate.',
            abilities: [
              {
                type: 'exchange',
                corporations: ['SAR'],
                owner_type: 'player',
                from: 'par',
              },
            ],
            color: '#000000',
            text_color: 'white',
          },
          {
            name: 'MINOR: 1',
            sym: 'M1',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 2',
            sym: 'M2',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 3',
            sym: 'M3',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 4',
            sym: 'M4',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 5',
            sym: 'M5',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 6',
            sym: 'M6',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 7',
            sym: 'M7',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 8',
            sym: 'M8',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 9',
            sym: 'M9',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 10',
            sym: 'M10',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 11',
            sym: 'M11',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
          {
            name: 'MINOR: 12',
            sym: 'M12',
            value: 100,
            revenue: 0,
            desc: 'A 50% director’s certificate in the associated minor company. Starting location is B1 ().',
            abilities: [],
            color: '#ffffff',
            text_color: 'black',
          },
        ].freeze

        CORPORATIONS = [
          {
            sym: '1',
            name: '1',
            logo: '1822/1',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'B2',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '2',
            name: '2',
            logo: '1822/2',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'G3',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '3',
            name: '3',
            logo: '1822/3',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'G7',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '4',
            name: '4',
            logo: '1822/4',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'H8',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '5',
            name: '5',
            logo: '1822/5',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'H10',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '6',
            name: '6',
            logo: '1822/6',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'H12',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '7',
            name: '7',
            logo: '1822/7',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'G17',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '8',
            name: '8',
            logo: '1822/8',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'E13',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '9',
            name: '9',
            logo: '1822/9',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'E11',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '10',
            name: '10',
            logo: '1822/10',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'C9',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '11',
            name: '11',
            logo: '1822/11',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'B10',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: '12',
            name: '12',
            logo: '1822/12',
            tokens: [0],
            type: 'minor',
            always_market_price: true,
            float_percent: 100,
            hide_shares: true,
            shares: [100],
            max_ownership_percent: 100,
            coordinates: 'A7',
            city: 0,
            color: '#ffffff',
            text_color: 'black',
            reservation_color: nil,
          },
          {
            sym: 'NAR',
            name: 'NAR',
            # logo: '1822_africa/NAR',
            tokens: [0, 50],
            type: 'major',
            float_percent: 20,
            always_market_price: true,
            coordinates: 'D2',
            color: 'black',
            text_color: 'white',
            reservation_color: nil,
            destination_coordinates: 'C9',
            # destination_icon: '1822_africa/NAR_DEST',
          },
          {
            sym: 'WAR',
            name: 'WAR',
            # logo: '1822_africa/WAR',
            tokens: [0, 50],
            type: 'major',
            float_percent: 20,
            always_market_price: true,
            coordinates: 'A7',
            color: '#CD2226',
            text_color: 'black',
            reservation_color: nil,
            destination_coordinates: 'G7',
            # destination_icon: '1822_africa/WAR_DEST',
          },
          {
            sym: 'EAR',
            name: 'EAR',
            # logo: '1822_africa/EAR',
            tokens: [0, 50],
            type: 'major',
            float_percent: 20,
            always_market_price: true,
            coordinates: 'I7',
            color: '#FBE93B',
            text_color: 'black',
            reservation_color: nil,
            destination_coordinates: 'E9',
            # destination_icon: '1822_africa/EAR_DEST',
          },
          {
            sym: 'CAR',
            name: 'CAR',
            # logo: '1822_africa/CAR',
            tokens: [0, 50],
            type: 'major',
            float_percent: 20,
            always_market_price: true,
            coordinates: 'E9',
            color: '#3C662A',
            text_color: 'black',
            reservation_color: nil,
            destination_coordinates: 'D2',
            # destination_icon: '1822_africa/CAR_DEST',
          },
          {
            sym: 'SAR',
            name: 'SAR',
            # logo: '1822_africa/SAR',
            tokens: [0, 50],
            type: 'major',
            float_percent: 20,
            always_market_price: true,
            coordinates: 'F18',
            color: '#202062',
            text_color: 'white',
            reservation_color: nil,
            destination_coordinates: 'H10',
            # destination_icon: '1822_africa/SAR_DEST',
          },
        ].freeze
      end
    end
  end
end
