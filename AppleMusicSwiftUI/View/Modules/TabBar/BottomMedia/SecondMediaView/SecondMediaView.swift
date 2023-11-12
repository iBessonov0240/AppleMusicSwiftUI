//
//  SecondMediaView.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 06.11.2023.
//

import SwiftUI

struct SecondMediaView: View {

    @State private var currentTime: TimeInterval = 0
    @State private var targetTime: TimeInterval = 278
    @State private var volume: CGFloat = 0.3
    @Binding var isPlaying: Bool

    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.7), Color.black.opacity(0.3)]), startPoint: .bottom, endPoint: .top)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Rectangle()
                    .frame(width: 40, height: 5)
                    .foregroundColor(.white.opacity(0.5))
                Spacer()

                Image("scherzinger")
                    .resizable()
                    .frame(width: 250, height: 270)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    .padding(.bottom, 70)

                HStack {
                    VStack {
                        Text("Whatever U Like")
                            .bold()
                            .foregroundStyle(Color.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                            .padding(.leading, 40)

                        Text("Nicole Scherzinger")
                            .bold()
                            .foregroundStyle(.white.opacity(0.7))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                            .padding(.leading, 40)
                    }

                    Button(action: {
                        // TO DO More options
                    }, label: {
                       Image(systemName: "ellipsis.circle.fill")
                            .resizable()
                            .tint(.gray.opacity(0.8))
                            .clipShape(Circle())
                            .background(Color.white)
                            .frame(width: 30, height: 30)
                            .cornerRadius(20)
                            .padding(.trailing, 25)
                    })
                }
                .padding(.bottom, 25)
                
                ZStack(alignment: .leading, content: {
                    Rectangle()
                        .frame(width: 320, height: 3)
                        .foregroundColor(.white.opacity(0.2))

                    Circle()
                        .frame(width: 7, height: 7)
                        .foregroundColor(.white.opacity(0.6))
                        .offset(x: CGFloat(currentTime / targetTime) * 320)
                })
                .padding(.bottom, 5)

                HStack {
                    Text(formatCurrentTime(currentTime))
                        .font(.system(size: 12))
                        .foregroundStyle(Color.white.opacity(0.6))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 40)

                    Text(formatTargetTime(targetTime))
                        .font(.system(size: 12))
                        .foregroundStyle(Color.white.opacity(0.6))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 40)
                }
                .onReceive(timer){ _ in
                    if isPlaying {
                        currentTime += 1
                        targetTime -= 1
                    }
                }

                HStack {
                    Button(action: {

                    }, label: {
                       Image(systemName: "backward.fill")
                            .resizable()
                            .tint(.white)
                            .frame(width: 40, height: 25)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 60)
                    })

                    Button(action: {
                        isPlaying.toggle()
                        
                    }, label: {
                        if isPlaying {
                            Image(systemName: "stop.fill")
                                .resizable()
                                .tint(.white)
                                .frame(width: 40, height: 40)
                                .frame(maxWidth: .infinity, alignment: .center)
                        } else {
                            Image(systemName: "play.fill")
                                 .resizable()
                                 .tint(.white)
                                 .frame(width: 40, height: 40)
                                 .frame(maxWidth: .infinity, alignment: .center)
                        }
                    })

                    Button(action: {

                    }, label: {
                       Image(systemName: "forward.fill")
                            .resizable()
                            .tint(.white)
                            .frame(width: 40, height: 25)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing, 60)
                    })
                }
                .padding(.top, 35)


                HStack {
                    Image(systemName: "speaker.fill")
                        .resizable()
                        .foregroundColor(.white.opacity(0.6))
                        .frame(width: 8, height: 10)
                        .padding(.trailing)


                    VStack {
                        Slider(value: $volume, in: 0...1)
                            .accentColor(.white.opacity(0.9))
                            .frame(width: 260)
                    }

                    Image(systemName: "speaker.wave.3.fill")
                        .resizable()
                        .foregroundColor(.white.opacity(0.6))
                        .frame(width: 15, height: 12)
                        .padding(.leading)
                }
                .padding(.top, 35)


                HStack {
                    Button(action: {
                        // TO DO Some
                    }, label: {
                        Image(systemName: "quote.bubble")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white.opacity(0.6))
                    })
                    .bold()

                    Button(action: {
                        // TO DO Some
                    }, label: {
                        Image(systemName: "airplayaudio")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white.opacity(0.6))
                    })
                    .bold()
                    .padding([.leading, .trailing], 70)

                    ZStack {
                        Button(action: {
                            // TO DO Some
                        }, label: {
                            Image(systemName: "list.bullet")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white.opacity(0.6))
                        })
                        .bold()

                    }
                }
                .padding(.top, 30)
            }
        }
    }

    private func formatCurrentTime(_ time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%d:%02d", minutes, seconds)
    }

    private func formatTargetTime(_ time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "-%d:%02d", minutes, seconds)
    }
}

struct SecondMediaView_Previews: PreviewProvider {
    static var previews: some View {
        SecondMediaView(isPlaying: .constant(false))
    }
}
